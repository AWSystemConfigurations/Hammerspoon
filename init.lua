--Reload Config--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

--Settings--
hs.window.animationDuration = 0.0
hs.dockicon.hide()
laptopScreen = "Color LCD"

--WINDOW MOVEMENT--

--Top Left--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

--Top Half--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

--Top Right--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "O", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

--Left Half--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

--Right Half--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

--Bottom Left--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

--Bottom Half--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ",", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

--Bottom Right--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ".", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

--100% Center--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

--50% Center--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 100
  f.y = max.y + 100
  f.w = max.w - 200
  f.h = max.h - 200
  win:setFrame(f)
end)

--Special Layouts--
local topHalf = hs.geometry(0, 0, 1, 0.5)
local bottomHalf = hs.geometry(0.5, 0, 1, 0.5)
local topLeft = hs.geometry(0, 0, 0.5, 0.5)
local bottomRight = hs.geometry(0.5, 0, 0.5, 0.5)
local topRight = hs.geometry(0.5, 0.5, 0.5, 0.5)
local bottomLeft = hs.geometry(0, 0.5, 0.5, 0.5)


function appToFront(_app)
    local app = hs.appfinder.appFromName(_app)
    if not app then
      hs.application.launchOrFocus(_app)
    end
    local mainwin = app:mainWindow()
    mainwin:focus()
end

local layout1 = {
  {"iTerm2", nil, laptopScreen, topLeft, nil, nil},
  {"Atom", nil, laptopScreen, bottomLeft, nil, nil},
  {"Google Chrome", nil, laptopScreen, hs.layout.right50, nil, nil},

}

local layout2 = {
  {"Messages", nil, laptopScreen, topRight, nil, nil},
  {"Slack", nil, laptopScreen, bottomRight, nil, nil},
  {"Atom", nil, laptopScreen, topLeft, nil, nil},
  {"Mail", nil, laptopScreen, bottomLeft, nil, nil},
}

--Screen layout key bindings--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "0", function()
  appToFront("iTerm2")
  appToFront("Atom")
  appToFront("Google Chrome")
  hs.layout.apply(layout1)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "9", function()
  appToFront("Messages")
  appToFront("Slack")
  appToFront("Atom")
  appToFront("Mail")
  hs.layout.apply(layout2)
end)
