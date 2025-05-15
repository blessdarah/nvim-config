local go_dap_config = function()
	local dap = require("dap")
	-- 🔧 Adapter setup: dynamic function that works for local `launch`
	dap.adapters.go = function(callback, _)
		local port = 38697
		local handle
		handle = vim.loop.spawn("dlv", {
			args = { "dap", "-l", "127.0.0.1:" .. port },
			detached = true,
		}, function(code)
			handle:close()
			print("Delve exited with code", code)
		end)

		-- Give Delve time to start
		vim.defer_fn(function()
			callback({ type = "server", host = "127.0.0.1", port = port })
		end, 100)
	end

	-- 🔧 Add separate named adapter for Docker attach
	dap.adapters.go_docker = {
		type = "server",
		host = "127.0.0.1",
		port = 2345, -- Delve running in Docker must listen here
	}

	-- ✅ Two configs: one for local, one for Docker
	dap.configurations.go = {
		{
			type = "go",
			name = "Debug (Local)",
			request = "launch",
			program = "${file}",
			dlvToolPath = vim.fn.exepath("dlv"),
		},
		{
			type = "go_docker",
			name = "Attach to Docker",
			request = "attach",
			mode = "remote",
			remotePath = "/app", -- path inside Docker
			localPath = vim.fn.getcwd(), -- host project path
			port = 2345,
			host = "127.0.0.1",
		},
	}
end

return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		go_dap_config()

		-- configurations for nodejs
		dap.adapters.node2 = {
			type = "executable",
			command = "node",
			args = {
				os.getenv("HOME")
					.. "/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
				"--port",
				"0",
			},
		}
		dap.configurations.javascript = {
			{
				type = "node2",
				request = "launch",
				name = "Launch Program",
				program = "${file}",
				cwd = "${workspaceFolder}",
				runtimeArgs = { "--inspect-brk" },
				skipFiles = { "<node_internals>/**" },
			},
			{
				type = "node2",
				request = "attach",
				name = "Attach to Process",
				processId = require("dap.utils").pick_process,
			},
		}

		-- Configure nvim-dap-ui
		dapui.setup()

		-- Automatically open/close UI on debugging start/stop
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- Update the dap symbols for break-points
		vim.fn.sign_define("DapBreakpoint", {
			text = "", -- You can use Nerd Font symbols or plain text like '●' or 'B'
			texthl = "DiagnosticSignError", -- Highlight group for the symbol
			linehl = "", -- Optional: highlight the whole line
			numhl = "", -- Optional: highlight the line number
		})
	end,
	keys = {
		{ "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", desc = "Toggle Breakpoint" },
		{ "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", desc = "Continue" },
		{ "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", desc = "Step Into" },
		{ "<leader>do", "<cmd>lua require'dap'.step_out()<CR>", desc = "Step Out" },
		{ "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<CR>", desc = "Toggle REPL" },
		{ "<leader>dt", "<cmd>lua require'dap'.terminate()<CR>", desc = "Terminate" },
		{ "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", desc = "Toggle DAP UI" },
		{ "<leader>ds", "<cmd>lua require'dap'.run_last()<CR>", desc = "Start Debugging" },
	},
}
