local opt = vim.opt
local keymap = vim.keymap

opt.relativenumber = true
opt.scrolloff = 10

for i = 1, 9, 1 do
  keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

local keys = { "¡", "™", "£", "¢", "∞", "§", "¶", "•", "ª" }

for i, key in ipairs(keys) do
  keymap.set(
    "n",
    key,
    function()
      vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end
  )
end
