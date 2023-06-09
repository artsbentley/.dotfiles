# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/test"
window_root $TMUXIFIER_LAYOUT_PATH

# Create new window. If no argument is given, window name will be based on
# layout file name.
split_v 20
split_h 60
select_pane 0
