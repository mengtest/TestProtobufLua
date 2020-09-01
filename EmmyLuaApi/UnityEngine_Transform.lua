﻿---@class Transform : Component
---@field public position Vector3
---@field public localPosition Vector3
---@field public eulerAngles Vector3
---@field public localEulerAngles Vector3
---@field public right Vector3
---@field public up Vector3
---@field public forward Vector3
---@field public rotation Quaternion
---@field public localRotation Quaternion
---@field public localScale Vector3
---@field public parent Transform
---@field public worldToLocalMatrix Matrix4x4
---@field public localToWorldMatrix Matrix4x4
---@field public root Transform
---@field public childCount Int32
---@field public lossyScale Vector3
---@field public hasChanged bool
---@field public hierarchyCapacity Int32
---@field public hierarchyCount Int32
local Transform = {}
---@public
---@param parent Transform
---@return void
function Transform:SetParent(parent) end
---@public
---@param parent Transform
---@param worldPositionStays bool
---@return void
function Transform:SetParent(parent, worldPositionStays) end
---@public
---@param position Vector3
---@param rotation Quaternion
---@return void
function Transform:SetPositionAndRotation(position, rotation) end
---@public
---@param translation Vector3
---@return void
function Transform:Translate(translation) end
---@public
---@param translation Vector3
---@param relativeTo number
---@return void
function Transform:Translate(translation, relativeTo) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return void
function Transform:Translate(x, y, z) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@param relativeTo number
---@return void
function Transform:Translate(x, y, z, relativeTo) end
---@public
---@param translation Vector3
---@param relativeTo Transform
---@return void
function Transform:Translate(translation, relativeTo) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@param relativeTo Transform
---@return void
function Transform:Translate(x, y, z, relativeTo) end
---@public
---@param eulerAngles Vector3
---@return void
function Transform:Rotate(eulerAngles) end
---@public
---@param eulerAngles Vector3
---@param relativeTo number
---@return void
function Transform:Rotate(eulerAngles, relativeTo) end
---@public
---@param xAngle Single
---@param yAngle Single
---@param zAngle Single
---@return void
function Transform:Rotate(xAngle, yAngle, zAngle) end
---@public
---@param xAngle Single
---@param yAngle Single
---@param zAngle Single
---@param relativeTo number
---@return void
function Transform:Rotate(xAngle, yAngle, zAngle, relativeTo) end
---@public
---@param axis Vector3
---@param angle Single
---@return void
function Transform:Rotate(axis, angle) end
---@public
---@param axis Vector3
---@param angle Single
---@param relativeTo number
---@return void
function Transform:Rotate(axis, angle, relativeTo) end
---@public
---@param point Vector3
---@param axis Vector3
---@param angle Single
---@return void
function Transform:RotateAround(point, axis, angle) end
---@public
---@param target Transform
---@return void
function Transform:LookAt(target) end
---@public
---@param target Transform
---@param worldUp Vector3
---@return void
function Transform:LookAt(target, worldUp) end
---@public
---@param worldPosition Vector3
---@param worldUp Vector3
---@return void
function Transform:LookAt(worldPosition, worldUp) end
---@public
---@param worldPosition Vector3
---@return void
function Transform:LookAt(worldPosition) end
---@public
---@param direction Vector3
---@return Vector3
function Transform:TransformDirection(direction) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return Vector3
function Transform:TransformDirection(x, y, z) end
---@public
---@param direction Vector3
---@return Vector3
function Transform:InverseTransformDirection(direction) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return Vector3
function Transform:InverseTransformDirection(x, y, z) end
---@public
---@param vector Vector3
---@return Vector3
function Transform:TransformVector(vector) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return Vector3
function Transform:TransformVector(x, y, z) end
---@public
---@param vector Vector3
---@return Vector3
function Transform:InverseTransformVector(vector) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return Vector3
function Transform:InverseTransformVector(x, y, z) end
---@public
---@param position Vector3
---@return Vector3
function Transform:TransformPoint(position) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return Vector3
function Transform:TransformPoint(x, y, z) end
---@public
---@param position Vector3
---@return Vector3
function Transform:InverseTransformPoint(position) end
---@public
---@param x Single
---@param y Single
---@param z Single
---@return Vector3
function Transform:InverseTransformPoint(x, y, z) end
---@public
---@return void
function Transform:DetachChildren() end
---@public
---@return void
function Transform:SetAsFirstSibling() end
---@public
---@return void
function Transform:SetAsLastSibling() end
---@public
---@param index Int32
---@return void
function Transform:SetSiblingIndex(index) end
---@public
---@return Int32
function Transform:GetSiblingIndex() end
---@public
---@param name string
---@return Transform
function Transform:Find(name) end
---@public
---@param parent Transform
---@return bool
function Transform:IsChildOf(parent) end
---@public
---@param name string
---@return Transform
function Transform:FindChild(name) end
---@public
---@return IEnumerator
function Transform:GetEnumerator() end
---@public
---@param axis Vector3
---@param angle Single
---@return void
function Transform:RotateAround(axis, angle) end
---@public
---@param axis Vector3
---@param angle Single
---@return void
function Transform:RotateAroundLocal(axis, angle) end
---@public
---@param index Int32
---@return Transform
function Transform:GetChild(index) end
---@public
---@return Int32
function Transform:GetChildCount() end
