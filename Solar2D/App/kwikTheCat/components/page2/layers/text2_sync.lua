
local name = ...
local parent,root = newModule(name)

local M = {
  name = "",
  layer = "text2",
  class = "sync",
  folder = "audios/sync",
  properties = {
    target       = "text2",
    autoPlay     = true,
    delay        = 3000,
    fadeDuration = 1000,
    speakerIcon = true,
    wordTouch   = true,
  },
  audioProps = {
    filename    = "sync/iamkwik.mp3",
    channel      = 2,
    volume      = 10,
  },
  textProps = {
    folder       = nil,
    font         = "",
    fontColor   = { 0,0,0 },
    fontColorHi = { 1,1,0 },
    fontSize    = 24,
    language    = "",
    padding     = 10/4,
    readDir     = "leftToRight",
    sentenceDir = "sync/iamkwik", -- wordTouch
  },
  actions = {onComplete = "eventOne"},

}

M.line = {
  {
    name= "なまえは",
    out= 0.500,
    start= 0.000,
    file= "a.mp3",
    action= "eventTwo",
    dur= 1000
  },
  {
    name= "",
    out= 1.000,
    start= 0.500,
    file= "b.mp3",
    action= "",
    dur= 0
  },
  {
    name= "くいっく",
    out= 1.500,
    start= 1.000,
    file= "c.mp3",
    action= "",
    dur= 0
  },
}
--
local layerProps = require(parent.."text1")
--
M.mX = layerProps.mX - layerProps.imageWidth/2
M.mY = layerProps.mY - layerProps.imageHeight

-- local json = require("json")
-- print(json.encode(M.line))
--
return require("components.kwik.layer_sync").set(M)

--[[
local M = {
  name = "alphabet",
  filename = "alphabet.mp3",
  type = "sync",
  autoPlay = true,
  channel = 2
}

M.line = {
  { start =  0, out = 1000, dur = 0, name = "A", file = "a.mp3", action = "onComplete"},
  { start =  1000, out = 2000, dur = 0, name = "B", file = "b.mp3", action = "onComplete"},
  { start =  2000, out = 3000, dur = 0, name = "C", file = "c.mp3", action = "onComplete"},
}

M.x            = 39
M.y            = 300
M.padding      = 10
-- M.font         = nil
M.fontSize     = 36
M.fontColor    = {1,1,1}
M.fontColorHi  = {1,1,0}
M.fadeDuration = 0
M.wordTouch    = true
M.sentenceDir  = "alphabet" -- wordTouch
M.readDir      = "leftToRight"
M.channel      = 1
M.layer        = "alphabet"
--
-- M.volume = 10
-- M.delay  = nil
--]]
