-- fetch DAP plugin
local dap = require('dap')
-- DAP UI plugin
local dapui = require('dapui')
dapui.setup()

-- dap fires events that we'll listen to
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- add adapter to delve (Go debugger)
dap.adapters.delve = {
	type = 'server',
	port = '${port}',
	executable = {
		command = 'dlv',
		args = {'dap', '-l', '127.0.0.1:${port}'},
	}
}

-- configure delve according to documentation
dap.configurations.go = {
	{
		type = "delve",
		name = "Debug",
		request = "launch",
		program = "${file}"
	},
	{
    		type = "delve",
    		name = "Debug test", -- configuration for debugging test files
    		request = "launch",
    		mode = "test",
    		program = "${file}"
 	},
	-- works with go.mod packages and sub packages 
  	{
    		type = "delve",
    		name = "Debug test (go.mod)",
    		request = "launch",
    		mode = "test",
    		program = "./${relativeFileDirname}"
  	} 
}
