-- NIGHT
-- Colorscheme = "nightfox"
Colorscheme = "codemonkey"

-- DAY
-- Colorscheme = "catppuccin"

function SetScheme(scheme)
	local status_ok, _ = pcall(vim.cmd, "colorscheme " .. scheme)
	if not status_ok then
		vim.notify("Colorscheme " .. Colorscheme .. " not found!")
		return
	end
end

SetScheme(Colorscheme)

-- To change the cursor color you have to go to iTerm2 > Profiles > Colors > Cursor Colors, it can be done in vim though with ":hi CursorLine guibg=#{some hex}"
-- vim.cmd("hi CursorLine guibg=gray30") -- Changing Line number color

-- Colorscheme specific configs
function SetSpecifics()
	if Colorscheme == "catppuccin" then
		vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
		vim.cmd([[colorscheme catppuccin]])
		vim.cmd([[highlight IndentBlanklineIndent1 guibg=#E5E7ED gui=nocombine]])
		vim.cmd([[highlight IndentBlanklineIndent2 guibg=#EFF1F5 gui=nocombine]])
		vim.cmd("hi Comment guifg=#7F86A6")
		vim.cmd("hi LineNr guifg=#7F86A6")
	elseif Colorscheme == "nightfox" then
		vim.cmd([[highlight IndentBlanklineIndent1 guibg=#233147 gui=nocombine]])
		vim.cmd([[highlight IndentBlanklineIndent2 guibg=#131A24 gui=nocombine]])
	elseif Colorscheme == "dayfox" then
		vim.cmd([[highlight IndentBlanklineIndent1 guibg=#DCE7CB gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent2 guibg= gui=nocombine]])
	elseif Colorscheme == "codemonkey" then
		vim.cmd([[highlight IndentBlanklineIndent1 guibg=#222F45 gui=nocombine]])
		vim.cmd([[highlight IndentBlanklineIndent2 guibg=#131A24 gui=nocombine]])
	else
		vim.cmd([[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]])
		vim.cmd([[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]])
	end
end

SetSpecifics()

return Colorscheme
