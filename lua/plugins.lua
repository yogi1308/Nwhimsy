return {
	{
		"nvim-mini/mini.animate",
		opts = { cursor = { enable = false } },
	},
	{ -- think of using the fire hazard
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
	{
		"tamton-aquib/duck.nvim",
		config = function()
			vim.keymap.set("n", "<leader>dd", function()
				require("duck").hatch()
			end, {})
			vim.keymap.set("n", "<leader>dk", function()
				require("duck").cook()
			end, {})
			vim.keymap.set("n", "<leader>da", function()
				require("duck").cook_all()
			end, {})
		end,
	},
	{
		"giusgad/pets.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
		config = function()
			require("pets").setup()
		end,
	},
	{ "eandrju/cellular-automaton.nvim" },
	{
		"NStefan002/2048.nvim",
		cmd = "Play2048",
		config = true,
	},
	{
		"seandewar/killersheep.nvim",
		config = function()
			require("killersheep").setup({
				gore = true, -- enables/disables blood and gore
				keymaps = {
					move_left = "h",
					move_right = "l",
					shoot = "<Space>",
				},
			})
		end,
	},
	{
		"jim-fx/sudoku.nvim",
		cmd = "Sudoku",
		config = function()
			require("sudoku").setup({})
		end,
	},
	{
		"ashish0kumar/snake.nvim",
		cmd = "Snake",
		config = function()
			require("snake").setup()
		end,
	},
	{
		"ActionScripted/tetris.nvim",
		cmd = { "Tetris" },
		keys = { { "<leader>T", "<cmd>Tetris<cr>", desc = "Tetris" } },
		opts = {
			-- your awesome configuration here
		},
	},
}
