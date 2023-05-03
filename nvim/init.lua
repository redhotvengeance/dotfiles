require("config")

-- check for and load local init.lua
local l, _ = loadfile("~/.dotfiles/nvim/init.lua.local")
if l ~= nil then
  l()
end
