local picker = require("snacks.picker")
local dap     = require("dap")

-- Register a Snacks picker to debug via DAP configurations
picker.register("snacks_picker_list", {
  name = "🛠 DAP Configurations",
  items = function()
    return dap.configurations.javascript or {}
  end,
  display = function(item)
    return item.name
  end,
  on_select = function(item)
    dap.run(item)
  end,
})

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    opts = {
      transparent = false,
    },
  },
  -- Configure LazyVim to load solarized
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[                               
          ___     ___    ___   __  __ /\_\    ___ ___    
         / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  
        /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ 
        \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
         \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/ 

      ]],
          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = " ", key = "d", desc = "Debug Picker", action = ":lua Snacks.dashboard.pick('snacks_picker_list')" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
}
