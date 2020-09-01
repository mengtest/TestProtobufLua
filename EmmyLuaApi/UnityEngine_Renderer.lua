﻿---@class Renderer : Component
---@field public isPartOfStaticBatch bool
---@field public worldToLocalMatrix Matrix4x4
---@field public localToWorldMatrix Matrix4x4
---@field public enabled bool
---@field public shadowCastingMode number
---@field public receiveShadows bool
---@field public material Material
---@field public sharedMaterial Material
---@field public materials Material[]
---@field public sharedMaterials Material[]
---@field public bounds Bounds
---@field public lightmapIndex Int32
---@field public realtimeLightmapIndex Int32
---@field public lightmapScaleOffset Vector4
---@field public motionVectorGenerationMode number
---@field public realtimeLightmapScaleOffset Vector4
---@field public isVisible bool
---@field public lightProbeUsage number
---@field public lightProbeProxyVolumeOverride GameObject
---@field public probeAnchor Transform
---@field public reflectionProbeUsage number
---@field public sortingLayerName string
---@field public sortingLayerID Int32
---@field public sortingOrder Int32
---@field public lightmapTilingOffset Vector4
---@field public lightProbeAnchor Transform
---@field public castShadows bool
---@field public motionVectors bool
---@field public useLightProbes bool
local Renderer = {}
---@public
---@param properties MaterialPropertyBlock
---@return void
function Renderer:SetPropertyBlock(properties) end
---@public
---@param dest MaterialPropertyBlock
---@return void
function Renderer:GetPropertyBlock(dest) end
---@public
---@param result List
---@return void
function Renderer:GetClosestReflectionProbes(result) end
