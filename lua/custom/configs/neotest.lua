local neotest = require "neotest"

neotest.setup {
  adapters = {
    require "neotest-vitest",
  },
  status = { virtual_text = true },
  output = { open_on_run = true },
}
