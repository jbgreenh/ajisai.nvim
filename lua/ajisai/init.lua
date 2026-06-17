local M = {}

M.config = {
	variant = "ajisai",
	transparent = true,
	italics = true,
	float_background = false,
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	if vim.g.colors_name == "ajisai" then
		M.load()
	end
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "ajisai"

	local theme = require("ajisai.theme")(M.config)

	local groups = {}
	for _, group_fn in ipairs({
		require("ajisai.groups.base"),
		require("ajisai.groups.syntax"),
		require("ajisai.groups.diagnostics"),
		require("ajisai.groups.plugins"),
	}) do
		for name, hl in pairs(group_fn(theme, M.config)) do
			groups[name] = hl
		end
	end

	for name, hl in pairs(groups) do
		vim.api.nvim_set_hl(0, name, hl)
	end
end

return M
