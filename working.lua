#! /usr/bin/env lua
--[[
  This is a working file for following along with Lua tutorials.
  Lua's comment syntax is a bit different from other languages
  I've worked with.
--]]

--[[
function greet(name)
  io.write("Hello " .. name .. "!\n")
end

io.write("What is your name? ")
local name = io.read()
greet(name)
--]]
--[[
days = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }

io.write("1–7, which day do you want the name of? ")
local d = tonumber(io.read())
io.write(days[d] .. "\n")

io.write("In Lua, we can use tables to implement linked lists.\n")

local list = nil
for line in io.lines() do
    list = { next = list, value = line }
end

local l = list
while l do
    print(l.value)
    l = l.next
end

print("Tables can contain all kinds of keys:")
local a = { x = 10, y = 45, "one", "two", "three" }
print(a.x, a.y, a[1], a[2], a[3])
print("We can reassign values in the table")
a.x = a.x + 1
a.y = a.y - 10

print(a.x, a.y)
print("We can even swap values in one line:")
a.x, a.y = a.y, a.x
print(a.x, a.y)

print("Functions can return multiple values:")
function sixseven()
    return 6, 7
end

six, seven = sixseven()
print(six, seven)
--]]

--[[
print("Scope test: starting with a global variable: myvar")
myvar = 7
print("myvar = " .. tostring(myvar))

print("Now creating a local copy in a do block")
do
    local myvar = myvar
    print("Initialized myvar to " .. tostring(myvar))
    myvar = myvar * 2
    print("Update myvar to " .. tostring(myvar))
end
print("Outside the block myvar is " .. tostring(myvar))
--]]

-- While loop example
local a = { 'a', 'b', 'c', 'd' }
local i = 1
while a[i] do
    print(a[i])
    i = i + 1
end
