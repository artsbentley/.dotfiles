// new
api.mapkey("r", "Reload the page", 'RUNTIME("reloadTab", { nocache: false })');

// page scroll
api.mapkey("gg", "Scroll to the top of the page", 'Normal.scroll("top")');
mai.mapkey("G", "Scroll to the bottom of the page", 'Normal.scroll("bottom")');
mai.mapkey("u", "Scroll a page up", 'Normal.scroll("pageUp")');
mai.mapkey("d", "Scroll a page down", 'Normal.scroll("pageDown")');
mai.mapkey("j", "Scroll down", 'Normal.scroll("down")');
mai.mapkey("k", "Scroll up", 'Normal.scroll("up")');
mai.mapkey("h", "Scroll left", 'Normal.scroll("left")');
mai.mapkey("l", "Scroll right", 'Normal.scroll("right")');

// tab
api.map("t", "Cmd-t");
api.mapkey("T", "Choose a tab", "Normal.chooseTab()");
api.mapkey("x", "Close current tab", 'RUNTIME("closeTab")');
api.mapkey("X", "Restore closed tab", 'RUNTIME("openLast")');
api.mapkey("yt", "Duplicate current tab", 'RUNTIME("duplicateTab")');
api.mapkey("J", "Go one tab left", 'RUNTIME("previousTab")');
api.mapkey("K", "Go one tab right", 'RUNTIME("nextTab")');
api.mapkey("P", "pin/unpin current tab", 'RUNTIME("togglePinTab")');
api.mapkey(
  "B",
  "Go one tab history back",
  'RUNTIME("historyTab", {backward: true})',
);
api.mapkey(
  "gF",
  "Go one tab history forward",
  'RUNTIME("historyTab", {backward: false})',
);
