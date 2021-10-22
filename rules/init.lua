this = "RulesPlugin" -- must match table name below
RulesPlugin = {};
RulesPlugin.name = "rules" -- should match folder name!

RulesPlugin.init = function()
	-- Commands
	Server.AddCommand("rules", "",
		function(client, args)
			local ln = "";
			io.input("./rules.txt");			
			repeat
				ln = io.read("*line");
				if ln ~= nil then Server.SendMessage(client, ln); end
			until ln == nul;
		end
	, "rules - shows you the rules", 0, 0)
	
	Server.AddCommand("freebuildrules", "fbrules",
		function(client, args)
			local ln = "";
			io.input("./fbrules.txt");			
			repeat
				ln = io.read("*line");
				if ln ~= nil then Server.SendMessage(client, ln); end
			until ln == nul;
		end
	, "fbrules - shows you the rules for freebuild maps", 0, 0)

	-- Events

	Server.RegisterEvent(ClassicProtocol.AuthEvent, 
	function(client)
		Server.SendMessage(client, "&eWelcome, traveller! Make sure to check out &a/rules &eand &a/fbrules");
	end
	)
end
