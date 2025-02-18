return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },  -- Disable inline suggestions (optional)
      panel = { enabled = false },       -- Disable Copilot panel (optional)
    })
  end,
}

