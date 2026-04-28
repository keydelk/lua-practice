#! /usr/bin/env lua
--[[
  This is a working file for following along with Lua tutorials.
  Lua's comment syntax is a bit different from other languages
  I've worked with.
--]]

function greet(name)
    print("Hello " .. name .. "!")
end

print("What is your name? ")
local name = io.read()
greet(name)
