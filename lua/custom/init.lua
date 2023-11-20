local opt = vim.opt
local keymap = vim.keymap

opt.relativenumber = true

for i = 1, 9, 1 do
  keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end
