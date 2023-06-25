local server = require "http.server"
local headers = require "http.headers"

local srv = server.listen {
  host = 'localhost',
  port = 8080,
  onstream = function(sv, out)
    local hdrs = out:get_headers()
    local method = hdrs:get(':method')
    local path = hdrs:get(':path') or '/'

    local rh = headers.new()
    rh:append(':status', '200')
    rh:append('content-type','text/html')

    out:write_headers(rh, false)
    -- out:write_chunk(("Received '%s' request on '%s' at '%s'\n"):format(method, path, os.date()), true)
    out:write_chunk("<h1>Hello world</h1>", true)
  end
}

local M = {}

M.start = function()
  srv:listen()
  srv:loop()
end

M.stop = function()
  srv:close()
end

return M
