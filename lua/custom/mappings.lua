local M = {}

M.general = {
  n = {
    ["<leader>w"] = { ":w<Cr>", "Save" },
    ["<leader>q"] = { ":q<Cr>", "Save" },
    ["<leader>qwe"] = { ":q!<Cr>", "Close ignore changes" },
    ["ss"] = { ":vsplit<Cr>", "Split vertical" },
    ["sh"] = { ":split<Cr>", "Split horizontal" },
    ["sd"] = { ":close<Cr>", "Close split" },
    ["<S-u>"] = { "<C-r>", "Redo" },
    ["<Tab>"] = { ">>", "Indent" },
    ["<S-Tab>"] = { "<<", "Dedent" },
    ["<A-j>"] = { ":m .+<Cr>==", "Move line down" },
    ["<A-k>"] = { ":m .-2<Cr>==", "Move line up" },
    ["∆"] = { ":m .+<Cr>==", "Move line down" },
    ["˚"] = { ":m .-2<Cr>==", "Move line up" },
    ["<A-S-j>"] = { "Vyp", "Copy line down" },
    ["<A-S-k>"] = { "VyP", "Copy line up" },
    ["<A-S-f>"] = { ":Format<Cr>", "LSP formatting" },
    ["Ô"] = { "Vyp", "Copy line down" },
    [""] = { "VyP", "Copy line up" },
    ["Ï"] = { ":Format<Cr>", "LSP formatting" },
    ["gj"] = { ":Gitsigns next_hunk <Cr>", "Git next hunk" },
    ["gk"] = { ":Gitsigns prev_hunk <Cr>", "Git next hunk" },
    ["cq"] = { "cb", "Change previous word" },
    ["<leader>t"] = {
      function ()
        require("nvchad.tabufline").closeAllBufs()
      end
    }
  },

  i = {
    ["jk"] = { "<Esc>", "Exit insert mode" },
    ["<A-l>"] = { "<Esc>ea", "Move to next word" },
    ["<A-h>"] = { "<Esc>bi", "Move to previous word" },
    ["<A-S-l>"] = { "<Esc>A", "Move to the end of a line" },
    ["<A-S-h>"] = { "<Esc>I", "Move to the beginning of a line" },
    ["¬"] = { "<Esc>ea", "Move to next word" },
    ["˙"] = { "<Esc>bi", "Move to previous word" },
    ["Ò"] = { "<Esc>A", "Move to the end of a line" },
    ["Ó"] = { "<Esc>I", "Move to the beginning of a line" },
    ["<Tab>"] = { "<C-t>", "Indent"},
    ["<S-Tab>"] = { "<C-d>", "Dedent"},
    ["<A-j>"] = { "<Esc>:m .+<Cr>==gi", "Move line down" },
    ["<A-k>"] = { "<Esc>:m .-2<Cr>==gi", "Move line up" },
    ["<A-S-j>"] = { "<Esc>Vyp", "Copy line down" },
    ["<A-S-k>"] = { "<Esc>VyP", "Copy line up" },
    ["<A-BS>"] = { "<Del>", "Delete" },
    ["<A-S-f>"] = { "<Esc>:Format<Cr>", "LSP formatting" },
    ["∆"] = { "<Esc>:m .+<Cr>==gi", "Move line down" },
    ["˚"] = { "<Esc>:m .-2<Cr>==gi", "Move line up" },
    ["Ô"] = { "<Esc>Vyp", "Copy line down" },
    [""] = { "<Esc>VyP", "Copy line up" },
    ["Ï"] = { "<Esc>:Format<Cr>", "LSP formatting" },
  },

  v = {
    ["jk"] = { "<Esc>", "Exit insert mode" },
    ["<Tab>"] = { ">gv", "Indent"},
    ["<S-Tab>"] = { "<gv", "Dedent"},
    ["<A-j>"] = { ":m '>+1<Cr>gv=gv", "Move line down" },
    ["<A-k>"] = { ":m '<-2<Cr>gv=gv", "Move line up" },
    ["<A-S-j>"] = { "yp", "Copy line down" },
    ["<A-S-k>"] = { "yP", "Copy line up" },
    ["∆"] = { ":m '>+1<Cr>gv=gv", "Move line down" },
    ["˚"] = { ":m '<-2<Cr>gv=gv", "Move line up" },
    ["Ô"] = { "yp", "Copy line down" },
    [""] = { "yP", "Copy line up" },
  },

  x = {
    ["jk"] = { "<Esc>", "Exit insert mode" },
  },

  c = {
    ["jk"] = { "<Esc>", "Exit insert mode" },
  },

  s = {
      ["jk"] = { "<Esc>", "Exit insert mode" },
  },

  o = {
    ["jk"] = { "<Esc>", "Exit insert mode" },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    ["<C-n>"] = { "", "" },
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.tabufline = {
  plugin = true,

  n = {
    ["<leader>d"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.lspconfig = {
  plugin = true,

  n = {
    ["<C-.>"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["<C-k>"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["<C-j>"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },
  },
}

M.telescope = {
  plugin = true,

  n = {
    [";f"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    [";/"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
    [";b"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>."] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.harpoon = {
  n = {
    ["ha"] = {
      function ()
        require("harpoon.mark").add_file()
      end
    },
    ["hp"] = {
      function ()
        require("harpoon.ui").toggle_quick_menu()
      end
    },
  },
}

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["ˆ"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["˙"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["√"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["ˆ"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["˙"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["√"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },
}

return M
