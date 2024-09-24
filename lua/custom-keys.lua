-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map <n> to run :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- nvim-dap keymaps
-- f5 to start debugging
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- ctrl + b for breakpoints
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- ctrl + c for breakpoint with condition
map('n', '<C-c>', [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
-- ctrl + l for log point
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msp: '))<CR>]], {})
-- F10 to step over
map('n', '<F7>', [[:lua require'dap'.step_over()<CR>]], {})
-- F11 to step into
map('n', '<F8>', [[:lua require'dap'.step_into()<CR>]], {})
-- F12 to step out
map('n', '<F9>', [[:lua require'dap'.step_over()<CR>]], {})
-- F6 to open REPL
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
-- press dl to run last ran configuration (after F5, it will run F5 again)
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})

-- DAPUI keymaps 
map('n', '<C-d>', [[:lua require'dapui'.toggle()<CR>]], {})

-- update leader key to .
vim.g.mapleader = "."
