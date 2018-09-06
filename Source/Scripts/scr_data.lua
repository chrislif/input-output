Database = {}

local function createDatabase()
	data = {}
end

function Database.retrieveData()
	data = nil
	if data == nil then
		createDatabase()
		print("database not found - creating database")
	else
		print("database found")
	end
end

function Database.startup()
	print("--- Database Startup ---")
	
	Database.retrieveData()
	print("\n")
	print("----- Startup Complete -----")
end

return Database
