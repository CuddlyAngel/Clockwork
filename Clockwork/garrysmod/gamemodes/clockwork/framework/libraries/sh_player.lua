--[[
	� 2014 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).

	Clockwork was created by Conna Wiles (also known as kurozael.)
	http://cloudsixteen.com/license/clockwork.html
--]]

Clockwork.player = Clockwork.kernel:NewLibrary("Player");
Clockwork.player.playerData = {};
Clockwork.player.characterData = {};

--[[
	@codebase Shared
	@details Add a new character data type that can be synced over the network.
	@param String The name of the data type (can be pretty much anything.)
	@param Int The type of the object (must be a type of NWTYPE_* enum).
	@param Various The default value of the data type.
	@param Function Alter the value that gets networked.
	@param Bool Whether or not the data is networked to the player only (defaults to false.)
--]]
function Clockwork.player:AddCharacterData(name, nwType, default, playerOnly, callback)
	Clockwork.player.characterData[name] = {
		default = default,
		nwType = nwType,
		callback = callback,
		playerOnly = playerOnly
	};
end;

--[[
	@codebase Shared
	@details Add a new player data type that can be synced over the network.
	@param String The name of the data type (can be pretty much anything.)
	@param Int The type of the object (must be a type of NWTYPE_* enum).
	@param Various The default value of the data type.
	@param Function Alter the value that gets networked.
	@param Bool Whether or not the data is networked to the player only (defaults to false.)
--]]
function Clockwork.player:AddPlayerData(name, nwType, default, playerOnly, callback)
	Clockwork.player.playerData[name] = {
		default = default,
		nwType = nwType,
		callback = callback,
		playerOnly = playerOnly
	};
end;