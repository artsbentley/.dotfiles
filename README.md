# TODO

## dotfiles/ config

- [ ] checkout dotfiles manager for symlinking -> stow?
- [ ] the following repo for example of install.sh and sketchybar; https://github.com/FelixKratz/dotfiles/blob/master/.install.sh
- [ ] configure LF and LFCD properly
- [ ] add TUI applications:
  - [x] taskwarrior
  - [ ] termtyper
  - [ ] hledger (tui) for finance

## taskwarrior

- [ ] add alias or bash script for dailies: show goals from yesterday with tag KPN, show tasks that need to be completed today. (create similar script for weekly meetings?)
- [ ] syncthing the data instead of on git
- [ ] vim plugin that automatically assigns task to corresponding git repository that taskwarrior is opened in?

### notetaking

- [ ] with telekasten/ markdown in nvim, i want to be able to put "#TODO" so i can make action points while taking business notes or creating a daily todo list.
- [ ] i want to be able to have due dates for my todo's so that i can organize and sort them by that, maybe in telescope
- at the moment, only this prompt is working: Telescope grep_string search=#TODO search_dirs={'$WIKI_DIR'}

## alacritty

- [ ] add nvim split buffer to shortcut, just like current cmd + E
  - [ ] make it that cmd + Z also works on vim buffers in that case
  - [ ] do i want it to always be a new terminal panel? or an actual vim split
  - [ ] add ctrl shift P -> explore files with either FZF or whole repo instead of cwd

## nvim

- [ ] create command with shortcut to surround current word with input
- [ ] when going deeper into the hover documentation, i want the borders to be larger
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
- [ ] treeSJ

check out this repo for inspiration on colorscheming/ tmux panel sizing and install scripts: https://github.com/nicknisi/dotfiles

- [ ] keymap shortcut for returning to the previous placement, currently using C-o
- [ ] i want keyboard shortcuts that work to switch tmux panes to also make me able to switch between nvim windows so that i can navigate faster, in particularly with neotree

## tmux

- [ ] have standerdized tmux session indexes for most used sessions, ie; taskwarrior is always #1, dotfiles always #2, etc.
- [ ] shortcuts for keeb switching tabs
- [x] create tmux zoom prefix
- [ ] create shortcut that can automatically format tmux windows to smaller sizes or back to even split
- [ ] when in tmux navigation layer on keyboard, make it that f key zooms in on a tab
- [ ] add colored border for zoomed panes
- [ ] alacritty + zsh shortcuts for VIT, spotify-tui and taskwarrior
- [ ] add continuum and resurrect
- [ ] make sure that plugins arent added to git repo, only TPM -> in install
      script add TPM from a git clone, then update tmux conf

## keymap

- [ ] 8+9 combo should be backspace so thumb doesnt need to be raised to make
      corrections int the num layer
- [ ] free up the thumb key and place backspace on a homerow combo -[ ] rethink terminal navigation layer for on thumbkey?
- [ ] fix the certain symbols not working on keeb in vim like ";"
- [ ] make it that any combination can trigger the navigation mode instead of carefully having to press certain combos first, ie first navigation key and then the right thumb
- [ ] remove press hold on tiling window key
- [ ] add capsword
- [ ] add / to a combo on left hand
- [ ] add zoom in and out to tmux nav keymap
- [ ] in nav mode, replace delete with opt key
- [ ] combo for C-d an C-u
- [ ] create harpoon activation for the num layer - combine with alacritty shortcuts
- [ ] combo maps for both ctrl up and down
- [ ] harpoon + buffer navigation on the left side of navigation layer

## Mac

- [ ] align vimium shortcuts for tab navigation with the tmux and nvim keymaps for smoother navigation. look into surfingkeys vs tridactyl
- [ ] install spotify tui and setup shortcuts for in alacritty or nvim like lazygit
- [ ] look into a solution for notetaking -> see telekasten.nvim
- [ ] create shortcuts for making faster connection between headphones and laptop speakers
