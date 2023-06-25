-- Imports the plugin's additional lua modules
local server = require("mockserver.server")

-- creates an object for the module. all of the module's 
-- functions are associated with this object, which is
-- returned when the module is called with require
local M = {}

-- Routes calls made to this module to functions in the 
-- plugin's other modules
M.start_server = server.start
M.stop_server = server.stop

return M

