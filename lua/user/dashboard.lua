local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local board = {
	[[ /$$$$$$$                                          /$$   /$$]],
  [[| $$__  $$                                        | $$  /$$/]],
  [[| $$  \ $$ /$$$$$$$$  /$$$$$$   /$$$$$$   /$$$$$$ | $$ /$$/ ]],
  [[| $$  | $$|____ /$$/ /$$__  $$ /$$__  $$ /$$__  $$| $$$$$/  ]],
  [[| $$  | $$   /$$$$/ | $$$$$$$$| $$  \__/| $$  \ $$| $$  $$  ]],
  [[| $$  | $$  /$$__/  | $$_____/| $$      | $$  | $$| $$\  $$ ]],
  [[| $$$$$$$/ /$$$$$$$$|  $$$$$$$| $$      |  $$$$$$/| $$ \  $$]],
  [[|_______/ |________/ \_______/|__/       \______/ |__/  \__/]],
}

local data_exists, custom_dasboard = pcall(require, "custom.dashboard")
if data_exists then
	if type(custom_dasboard) == "table" then
		local data_board = custom_dasboard.dashboard2
		if data_board ~= nil then
			board = data_board
		end
	end
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = board
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("z", "鈴 Lazy", ":Lazy<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	local footer_text = "DzeroK"
	if data_exists then
		if type(custom_dasboard) == "table" then
			local data_txt = custom_dasboard.footer
			if data_txt ~= nil then
				footer_text = data_txt
			end
		end
	end

	return footer_text
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
