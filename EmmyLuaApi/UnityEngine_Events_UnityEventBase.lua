﻿---@class UnityEventBase : Object
local UnityEventBase = {}
---@public
---@return Int32
function UnityEventBase:GetPersistentEventCount() end
---@public
---@param index Int32
---@return Object
function UnityEventBase:GetPersistentTarget(index) end
---@public
---@param index Int32
---@return string
function UnityEventBase:GetPersistentMethodName(index) end
---@public
---@param index Int32
---@param state number
---@return void
function UnityEventBase:SetPersistentListenerState(index, state) end
---@public
---@return void
function UnityEventBase:RemoveAllListeners() end
---@public
---@return string
function UnityEventBase:ToString() end
---@public
---@param obj Object
---@param functionName string
---@param argumentTypes Type[]
---@return MethodInfo
function UnityEventBase.GetValidMethodInfo(obj, functionName, argumentTypes) end
