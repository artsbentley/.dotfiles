# TODO

## dotfiles/ config

- [ ] checkout dotfiles manager for symlinking -> stow?
- [ ] the following repo for example of install.sh and sketchybar; https://github.com/FelixKratz/dotfiles/blob/master/.install.sh
- [ ] configure LF and LFCD properly
- [ ] add TUI applications:
  - [ ] taskwarrior
  - [ ] Dooit?
  - [ ] termtyper

## nvim

- [ ] use harpoon instead instead of buffers, figure out how to delete linked files
- [ ] script with auto pairings that if the input between the pairing is empty, skips over the end if i return to normal mode in vim
- [ ] potential use of mini.16 for colorscheming
- [ ] create easier shortcut for surrounding current word with mini.surround
- [ ] adjust C-d and C-u in vim to scroll less
- [ ] bugfix cmp; wrong indentation when accepting suggestion
- [ ] make it easier to escape the auto bracketing
- [ ] copilot accept single word only, see; https://www.reddit.com/r/neovim/comments/11ci5ik/copilot_is_no_longer_a_nuisance_for_me/
- [ ] create a command to easily split buffers or a setting to open new files always in a split
- [ ] tab + cmd shows next word/ line output for copilot
- [ ] way to open files in tmux instead of nvim buffers (in LF?)
- [ ] implement git telescope plugin: https://github.com/aaronhallaert/ts-advanced-git-search.nvim
- [ ] zettelkasten package + glow (or any other .md viewer)
- [ ] venn.nvim (drawing ascii diagrams)

check out this repo for inspiration on colorscheming/ tmux panel sizing and install scripts: https://github.com/nicknisi/dotfiles

- [ ] keymap shortcut for returning to the previous placement, currently using C-o
- [ ] i want keyboard shortcuts that work to switch tmux panes to also make me able to switch between nvim windows so that i can navigate faster, in particularly with neotree

## tmux

- [ ] shortcuts for keeb switching tabs
- [x] create tmux zoom prefix
- [ ] create shortcut that can automatically format tmux windows to smaller sizes or back to even split
- [ ] when in tmux navigation layer on keyboard, make it that f key zooms in on a tab
- [ ] add colored border for zoomed panes

## keymap

- [ ] fix the certain symbols not working on keeb in vim like ";"
- [ ] make it that any combination can trigger the navigation mode instead of carefully having to press certain combos first, ie first navigation key and then the right thumb
- [ ] remove press hold on tiling window key
- [ ] add capsword
- [ ] add zoom in and out to tmux nav keymap
- [ ] in nav mode, replace delete with opt key
- [ ] combo for C-d an C-u
- [ ] create harpoon activation for the num layer - combine with alacritty shortcuts

## Mac

- [ ] align vimium shortcuts for tab navigation with the tmux and nvim keymaps for smoother navigation. look into surfingkeys vs tridactyl
- [ ] install spotify tui and setup shortcuts for in alacritty or nvim like lazygit
- [ ] look into a solution for notetaking -> see telekasten.nvim
- [ ] create shortcuts for making faster connection between headphones and laptop speakers
