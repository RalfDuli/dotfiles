local M = {}

M.general = {
  n = {
    ["<C-p>"] = { "<cmd>Telescope find_files<CR>", "Find files" },
    ["<C-S-p>"] = { "<cmd>Telescope commands<CR>", "Command palette" },
    ["<C-f>"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Find in buffer" },
    ["<C-S-f>"] = { "<cmd>Telescope live_grep<CR>", "Find in project" },
    ["<C-k><C-o>"] = { "<cmd>Telescope file_browser<CR>", "Open folder" },
    ["<C-Tab>"] = { "<cmd>bnext<CR>", "Next buffer" },
    ["<C-S-Tab>"] = { "<cmd>bprevious<CR>", "Previous buffer" },

    -- VSCode-like terminal toggle
    ["<C-`>"] = { "<cmd>ToggleTerm<CR>", "Toggle terminal" },
  },
}

return M

