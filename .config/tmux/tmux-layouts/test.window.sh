# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/test"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "test"

split_v 20
run_cmd "watch -t date"
split_h 60
select_pane 0
