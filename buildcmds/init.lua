this = "BuildCmdsPlugin" -- must match table name below
BuildCmdsPlugin = {};
BuildCmdsPlugin.name = "buildcmds" -- should match folder name!

BuildCmdsPlugin.init = function()
	-- Commands
    Server.AddCommand("freebuild", "fb",
        function(client, args)
            Server.SendMessage(client, "Teleporting you over to the freebuild map!");
            Server.TransportPlayer(client, Server.GetWorldByName("freebuild", true));
        end
	,"freebuild - teleports you to the freebuild level", 0, 0)

	Server.AddCommand("buildcmds", "bcmds",
	function(client, args)
		Server.SendMessage(client, "&5Build map commands: &f/freebuild");
	end
	,"buildcmds - shows you all build map commands", 0, 0);

	-- Events
end
