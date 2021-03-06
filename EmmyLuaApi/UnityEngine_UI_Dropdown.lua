﻿---@class Dropdown : Selectable
---@field public template RectTransform
---@field public captionText Text
---@field public captionImage Image
---@field public itemText Text
---@field public itemImage Image
---@field public options List
---@field public onValueChanged DropdownEvent
---@field public value Int32
local Dropdown = {}
---@public
---@return void
function Dropdown:RefreshShownValue() end
---@public
---@param options List
---@return void
function Dropdown:AddOptions(options) end
---@public
---@param options List
---@return void
function Dropdown:AddOptions(options) end
---@public
---@param options List
---@return void
function Dropdown:AddOptions(options) end
---@public
---@return void
function Dropdown:ClearOptions() end
---@public
---@param eventData PointerEventData
---@return void
function Dropdown:OnPointerClick(eventData) end
---@public
---@param eventData BaseEventData
---@return void
function Dropdown:OnSubmit(eventData) end
---@public
---@param eventData BaseEventData
---@return void
function Dropdown:OnCancel(eventData) end
---@public
---@return void
function Dropdown:Show() end
---@public
---@return void
function Dropdown:Hide() end
