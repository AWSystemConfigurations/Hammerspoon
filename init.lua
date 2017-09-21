--Reload Config--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

--Settings--
hs.window.animationDuration = 0.0
hs.dockicon.hide()
laptopScreen = "Color LCD"
workMonitor = "G226HQL"
workMonitor2 = "DELL P2213"


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

--P1--
hs.hotkey.bind({"cmd", "alt"}, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = 0
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P2--
hs.hotkey.bind({"cmd", "alt"}, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.w / 3
  f.y = 0
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P3--
hs.hotkey.bind({"cmd", "alt"}, "3", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = (max.w / 3) * 2
  f.y = 0
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P4--
hs.hotkey.bind({"cmd", "alt"}, "4", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = max.h / 3
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P5--
hs.hotkey.bind({"cmd", "alt"}, "5", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.w / 3
  f.y = max.h / 3
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P6--
hs.hotkey.bind({"cmd", "alt"}, "6", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = (max.w / 3) * 2
  f.y = max.h / 3
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P7--
hs.hotkey.bind({"cmd", "alt"}, "7", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = (max.h / 3) * 2
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P8--
hs.hotkey.bind({"cmd", "alt"}, "8", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.h / 3
  f.y = (max.h / 3) * 2
  f.w = max.w / 3
  f.h = max.h / 3
  win:setFrame(f)
end)

--P9--
hs.hotkey.bind({"cmd", "alt"}, "9", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = (max.h / 3) * 2
  f.y = (max.h / 3) * 2
  f.w = max.w / 3
  f.h = max.h / 3
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

--Magnify Up--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "]", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x - 10
  f.y = f.y - 10
  f.w = f.w + 20
  f.h = f.h + 20
  win:setFrame(f)
end)

--Magnify Down--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "[", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x + 10
  f.y = f.y + 10
  f.w = f.w - 20
  f.h = f.h - 20
  win:setFrame(f)
end)

--Nudge Right--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x + 20
  win:setFrame(f)
end)

--Nudge Left--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x - 20
  win:setFrame(f)
end)

--Nudge Up--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.y = f.y - 20
  win:setFrame(f)
end)

--Nudge Down--
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.y = f.y + 20
  win:setFrame(f)
end)

--Handoff to Work Monitor--
hs.hotkey.bind({"cmd", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  win:moveToScreen(workMonitor2)
  win:moveToScreen(workMonitor)
end)

--handoff to Laptop--
hs.hotkey.bind({"cmd", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  win:moveToScreen(laptopScreen)
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
  {"Google Chrome", 
  nil, 
  laptopScreen, 
  hs.layout.right50, 
  nil, 
  nil},

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
  hs.layout.apply(layout2)
end)
