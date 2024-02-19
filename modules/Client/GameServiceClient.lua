--[=[
	@class GameServiceClient
]=]

local require = require(script.Parent.loader).load(script)

local GameServiceClient = {}
GameServiceClient.ServiceName = "GameServiceClient"

function GameServiceClient:Init(serviceBag)
	assert(not self._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")
end

return GameServiceClient