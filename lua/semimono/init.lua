local groups = require("semimono.groups")
local M = {}

local set_groups = function()
	local g = { groups.native }

	for _, grp in pairs(g) do
		for key, col in pairs(grp) do
			vim.api.nvim_set_hl(0, key, col)
		end
	end
end

local set_terminal = function()
	for key, col in pairs(groups.terminal) do
		vim.g[key] = col
	end
end

M.colorscheme = function()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "semimono"

	set_groups()
	set_terminal()
end

return M
