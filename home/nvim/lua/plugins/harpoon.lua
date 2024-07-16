return {
	"ThePrimeagen/harpoon",
	keys = {
		{ "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Add file to Harpoon" },
		{ "<C-h>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle Harpoon" },
		{ "<C-1>", function() require("harpoon.ui").nav_file(1) end, desc = "Switch to first Harpoon mark" },
		{ "<C-2>", function() require("harpoon.ui").nav_file(2) end, desc = "Switch to second Harpoon mark" },
		{ "<C-3>", function() require("harpoon.ui").nav_file(3) end, desc = "Switch to third Harpoon mark" },
		{ "<C-4>", function() require("harpoon.ui").nav_file(4) end, desc = "Switch to fourth Harpoon mark" },
	},
}
