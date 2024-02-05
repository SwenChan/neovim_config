local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	"                               ",
	"                               ",
	"       ▄▀▀▀▀▀▀▀▀▀▀▄▄          ",
	"     ▄▀▀░░░░░░░░░░░░░▀▄        ",
	"   ▄▀░░░░░░░░░░░░░░░░░░▀▄      ",
	"   █░░░░░░░░░░░░░░░░░░░░░▀▄    ",
	"  ▐▌░░░░░░░░▄▄▄▄▄▄▄░░░░░░░▐▌   ",
	"  █░░░░░░░░░░░▄▄▄▄░░▀▀▀▀▀░░█   ",
	" ▐▌░░░░░░░▀▀▀▀░░░░░▀▀▀▀▀░░░▐▌  ",
	" █░░░░░░░░░▄▄▀▀▀▀▀░░░░▀▀▀▀▄░█  ",
	" █░░░░░░░░░░░░░░░░▀░░░▐░░░░░▐▌ ",
	" ▐▌░░░░░░░░░▐▀▀██▄░░░░░░▄▄▄░▐▌ ",
	"  █░░░░░░░░░░░▀▀▀░░░░░░▀▀██░░█ ",
	"  ▐▌░░░░▄░░░░░░░░░░░░░▌░░░░░░█ ",
	"   ▐▌░░▐░░░░░░░░░░░░░░▀▄░░░░░█ ",
	"    █░░░▌░░░░░░░░▐▀░░░░▄▀░░░▐▌ ",
	"    ▐▌░░▀▄░░░░░░░░▀░▀░▀▀░░░▄▀  ",
	"    ▐▌░░▐▀▄░░░░░░░░░░░░░░░░█   ",
	"    ▐▌░░░▌░▀▄░░░░▀▀▀▀▀▀░░░█    ",
	"    █░░░▀░░░░▀▄░░░░░░░░░░▄▀    ",
	"   ▐▌░░░░░░░░░░▀▄░░░░░░▄▀      ",
	"  ▄▀░░░▄▀░░░░░░░░▀▀▀▀█▀        ",
	" ▀░░░▄▀░░░░░░░░░░▀░░░▀▀▀▀▄▄▄▄▄ ",
	"                               ",
	"                               ",
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  New File    ", ":enew<CR>"),
	dashboard.button("f", "󰈞  Find File   ", ":Telescope find_files<CR>"),
	dashboard.button("t", "󱘣  Find Text   ", ":Telescope live_grep<CR>"),
	dashboard.button("c", "  NVIM Config ", ":Telescope dotfiles<CR>"),
	dashboard.button("q", "󰩈  Quit        ", ":qa<CR>"),
}

dashboard.section.footer.val = {
	"                       ",
	"I Dont want to be Horny",
	" I Just wanna be happy ",
	"          󱓟           ",
	"                       ",
}

alpha.setup(dashboard.opts)
