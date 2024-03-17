pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

local opts = {
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown(),
		},
	},
	vimgrep_arguments = {
		"rg",
		"-L",
		"--color=never",
		"--no-heading",
		"--with-filename",
		"--line-number",
		"--column",
		"--smart-case",
		"--ignore-case",
	},
}

return opts
