#!/usr/bin/env lua
-- Caesar.lua
-- Lua implementation of a classic caesar cipher
local A = string.byte("A")
local Z = string.byte("Z")
local a = string.byte("a")
local z = string.byte("z")

function caesar(str, offset)
    local result = ""
    for chr in string.gmatch(str, ".") do
      local value = string.byte(chr)
        if value >= A and value <= Z then
          result = result .. string.char(((value - A + offset) % 26) + A)
        elseif value >= a and value <= z then
          result = result .. string.char(((value - a + offset) % 26) + a)
        else
            result = result .. chr
        end
    end
    return result
end

print("Enter the string to encode: ")
local input = io.read()
print("Enter the offset: ")
local offset = tonumber(io.read())
print(caesar(input, offset))
