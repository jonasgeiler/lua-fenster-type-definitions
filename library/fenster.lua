---@meta
--[[

Type definitions for lua-fenster
https://github.com/jonasgeiler/lua-fenster
https://luarocks.org/modules/jonasgeiler/fenster

--]]

---@class window*
---@field keys boolean[]
---@field delta number
---@field mousex integer
---@field mousey integer
---@field mousedown boolean
---@field modcontrol boolean
---@field modshift boolean
---@field modalt boolean
---@field modgui boolean
---@field width integer
---@field height integer
---@field title string
---@field scale integer
---@field targetfps number
local window = {}

function window:close() end

---@return boolean
function window:loop() end

---@param x integer
---@param y integer
---@param color integer
function window:set(x, y, color) end

---@param x integer
---@param y integer
---@return integer
---@nodiscard
function window:get(x, y) end

---@param color integer?
function window:clear(color) end

---@param key string
---@return any
---@nodiscard
function window:__index(key) end

function window:__gc() end

---@version >5.4
function window:__close() end

---@return string
---@nodiscard
function window:__tostring() end

---@class fenster
local fenster = {}

---@param width integer
---@param height integer
---@param title string?
---@param scale integer?
---@param targetfps number?
---@return window*
---@nodiscard
function fenster.open(width, height, title, scale, targetfps) end

---@param milliseconds integer
function fenster.sleep(milliseconds) end

---@return integer
---@nodiscard
function fenster.time() end

---@param color integer
---@return integer, integer, integer
---@overload fun(red: integer, green: integer, blue: integer): integer
---@nodiscard
function fenster.rgb(color) end

---@param window window*
function fenster.close(window) end

---@param window window*
---@return boolean
function fenster.loop(window) end

---@param window window*
---@param x integer
---@param y integer
---@param color integer
function fenster.set(window, x, y, color) end

---@param window window*
---@param x integer
---@param y integer
---@return integer
---@nodiscard
function fenster.get(window, x, y) end

---@param window window*
---@param color integer?
function fenster.clear(window, color) end

return fenster
