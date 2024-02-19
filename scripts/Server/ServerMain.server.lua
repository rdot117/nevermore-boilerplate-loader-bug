--[[
	@class ServerMain
]]
local ServerScriptService = game:GetService("ServerScriptService")

local loader = ServerScriptService.Nevermore:FindFirstChild("LoaderUtils", true).Parent
local require = require(loader).bootstrapGame(ServerScriptService.Nevermore)

local serviceBag = require("ServiceBag").new()
serviceBag:GetService(require("GameServiceServer"))
serviceBag:Init()
serviceBag:Start()