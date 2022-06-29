local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard") --or "alpha.themes.startify"
dashboard.section.header.val = {
	[[                                                Ʌ    Ʌ                                                          ]],
	[[           |>>>                                / \  //\                  ___     ___    ___                     ]],
	[[           |                     |\___/|      /   \//  \\               / _ `\  / __`\ / __`\    ______         ]],
	[[       _  _|_  _                 /O  O  \__  /    //  | \ \            /\ \/\ \/\  __//\ \_\ \  /\_____\        ]],
	[[      |;|_|;|_|;|               /     /  \/_/    //   |  \  \          \ \_\ \_\ \____\ \____/  \/_____/        ]],
	[[      \\.    .  /               @___@'    \/_   //    |   \   \         \/_/\/_/\/____/\/___/__                 ]],
	[[       \\:  .  /    \,/          |         \/_ //     |    \    \                    __  __ /\_\    ___ ___     ]],
	[[        ||:   |                  |          \///      |     \     \                 /\ \/\ \\/\ \  / __` __`\   ]],
	[[        ||:.  |         /'\     _| _ /   )   //       |      \     _\               \ \ \_/ |\ \ \/\ \/\ \/\ \  ]],
	[[        ||:  .|                /,/,_ _ _/   ( ; -.    |    _ _\.-~       _ .--~~-.   \ \___/  \ \_\ \_\ \_\ \_\ ]],
	[[        ||:   |                 /,{        _      `-.|.-~-.          ..~         `.   \/__/    \/_/\/_/\/_/\/_/ ]],
	[[        ||: , |                    \      /                 ~-. _ .-~      ..~~-.  \                            ]],
	[[        ||:   |                     `.   {            }                   /      \  \                           ]],
	[[        ||: . |                   .----~-.\        \-'                 .~         \  `. \^-.                    ]],
	[[       _||_   |                  ///.----..>    c   \             _ -~             `.  ^-`   ^-_                ]],
	[[  ,---~    ~`---,                  ///-._ _ _ _ _ _ _}^ - - - - ~                     ~--,   .-~                ]],
	[[,-               ~~----_____                                                             /.-'                   ]],
}
dashboard.section.buttons.val = {
	-- For your own icons: https://www.nerdfonts.com/cheat-sheet
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "פּ  Open Nvim Tree", "<cmd>NvimTreeToggle<cr>"),
	dashboard.button("b", "  Bookmarks", ":Telescope vim_bookmarks all<CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("F", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("p", "  Plugin configuration", ":e ~/.config/nvim/lua/shahbaz/plugins.lua <CR>|:41<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	-- note: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "the end"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
