return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    -- opts = {
    --   transparent = true,
    -- },
  },
  -- Configure LazyVim to load solarized
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
  {
    "echasnovski/mini.animate",
    enabled = false,
    recommended = true,
    event = "VeryLazy",
    opts = function()
      -- don't use animate when scrolling with the mouse
      local mouse_scrolled = false
      for _, scroll in ipairs({ "Up", "Down" }) do
        local key = "<ScrollWheel" .. scroll .. ">"
        vim.keymap.set({ "", "i" }, key, function()
          mouse_scrolled = true
          return key
        end, { expr = true })
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "grug-far",
        callback = function()
          vim.b.minianimate_disable = true
        end,
      })

      -- LazyVim.toggle.map("<leader>ua", {
      --   name = "Mini Animate",
      --   get = function()
      --     return not vim.g.minianimate_disable
      --   end,
      --   set = function(state)
      --     vim.g.minianimate_disable = not state
      --   end,
      -- })

      local animate = require("mini.animate")
      return {
        resize = {
          timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
        },
        scroll = {
          timing = animate.gen_timing.linear({ duration = 150, unit = "total" }),
          subscroll = animate.gen_subscroll.equal({
            predicate = function(total_scroll)
              if mouse_scrolled then
                mouse_scrolled = false
                return false
              end
              return total_scroll > 1
            end,
          }),
        },
      }
    end,
  },
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    enabled = false,
    event = "LazyFile",
    opts = {
      -- symbol = "▏",
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "alpha",
          "dashboard",
          "fzf",
          "help",
          "lazy",
          "lazyterm",
          "mason",
          "neo-tree",
          "notify",
          "toggleterm",
          "Trouble",
          "trouble",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[                               
          ___     ___    ___   __  __ /\_\    ___ ___    
         / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  
        /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ 
        \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
         \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/ 

      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      return dashboard
    end,
  },
}
