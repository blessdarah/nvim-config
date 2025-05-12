# My nvim config
- Nvim config for coding in Js/Ts, React, Node, PHP/Laravel and more
- Selected a couple of the best plugins for use in my application

## How to setup
I'm using a Mac so make sure to clone the repo to your home directory. 
If you already have an nvim dir, back it up with `mv nvim nvim.bak` before cloning.

## Tools I use
- I use Ghostty or Wezterm as my terminal of choice.
- I make sure to have Fira-Code (with the nerd font) installed. That's my best font for coding and I've been happy with it for many years today
- I have Bat as a better `ls`. So I have an alias in my zsh config to use `bat` out of the box by default

## Things to consider
- You should consider changing the leader key in `settings.lua` from `comma` to `space`. Space is pretty much a common leader key
for many people.
- Consider adding which-key plugin if you want to learn the key bindings when using the config. Each keymap is embedded within
the package and works well for me.
- You might also want to swap out `neogit` for `lazygit` if that's something you find useful.

## Pending plugins to configure
- Debug plugin.
- Adding an image preview plugin, although I still think I don't need it 🤫
- Still not happy with the trouble UI for finding issues in code
- Formatter not working perfectly when writing html in php code. It just sucks right now. I need to find a work around.
