﻿---@class StreamWriter : TextWriter
---@field public Null StreamWriter
---@field public AutoFlush bool
---@field public BaseStream Stream
---@field public Encoding Encoding
local StreamWriter = {}
---@public
---@return void
function StreamWriter:Flush() end
---@public
---@param buffer Char[]
---@param index Int32
---@param count Int32
---@return void
function StreamWriter:Write(buffer, index, count) end
---@public
---@param value Char
---@return void
function StreamWriter:Write(value) end
---@public
---@param buffer Char[]
---@return void
function StreamWriter:Write(buffer) end
---@public
---@param value string
---@return void
function StreamWriter:Write(value) end
---@public
---@return void
function StreamWriter:Close() end
