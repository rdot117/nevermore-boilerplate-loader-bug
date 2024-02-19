--[=[
	@class GameServiceServer
]=]

local require = require(script.Parent.loader).load(script)

local GameServiceServer = {}
GameServiceServer.ServiceName = "GameServiceServer"

function GameServiceServer:Init(serviceBag)
	assert(not self._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")
end

return GameServiceServer