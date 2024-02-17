return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
      ▄████████    ▄███████▄  ▄██████▄   ▄██████▄  ███▄▄▄▄      ▄████████ ████████▄     ▄████████  ▄█    █▄     ▄████████ 
      ███    ███   ███    ███ ███    ███ ███    ███ ███▀▀▀██▄   ███    ███ ███   ▀███   ███    ███ ███    ███   ███    ███ 
      ███    █▀    ███    ███ ███    ███ ███    ███ ███   ███   ███    █▀  ███    ███   ███    █▀  ███    ███   ███    █▀  
      ███          ███    ███ ███    ███ ███    ███ ███   ███   ███        ███    ███  ▄███▄▄▄     ███    ███   ███        
    ▀███████████ ▀█████████▀  ███    ███ ███    ███ ███   ███ ▀███████████ ███    ███ ▀▀███▀▀▀     ███    ███ ▀███████████ 
            ███   ███        ███    ███ ███    ███ ███   ███          ███ ███    ███   ███    █▄  ███    ███          ███ 
      ▄█    ███   ███        ███    ███ ███    ███ ███   ███    ▄█    ███ ███   ▄███   ███    ███ ███    ███    ▄█    ███ 
    ▄████████▀   ▄████▀       ▀██████▀   ▀██████▀   ▀█   █▀   ▄████████▀  ████████▀    ██████████  ▀██████▀   ▄████████▀  
      ]]

      logo = [[
        ▄████████    ▄███████▄  ▄██████▄   ▄██████▄  ███▄▄▄▄      ▄████████
        ███    ███   ███    ███ ███    ███ ███    ███ ███▀▀▀██▄   ███    ███
        ███    █▀    ███    ███ ███    ███ ███    ███ ███   ███   ███    █▀ 
        ███          ███    ███ ███    ███ ███    ███ ███   ███   ███       
      ▀███████████ ▀█████████▀  ███    ███ ███    ███ ███   ███ ▀███████████
              ███   ███        ███    ███ ███    ███ ███   ███          ███
        ▄█    ███   ███        ███    ███ ███    ███ ███   ███    ▄█    ███
      ▄████████▀   ▄████▀       ▀██████▀   ▀██████▀   ▀█   █▀   ▄████████▀ 
                                                                            
                ████████▄     ▄████████  ▄█    █▄     ▄████████             
                ███   ▀███   ███    ███ ███    ███   ███    ███             
                ███    ███   ███    █▀  ███    ███   ███    █▀              
                ███    ███  ▄███▄▄▄     ███    ███   ███                    
                ███    ███ ▀▀███▀▀▀     ███    ███ ▀███████████             
                ███    ███   ███    █▄  ███    ███          ███             
                ███   ▄███   ███    ███ ███    ███    ▄█    ███             
                ████████▀    ██████████  ▀██████▀   ▄████████▀              
      ]]

      logo = [[
      ███████╗██████╗  ██████╗  ██████╗ ███╗   ██╗███████╗
      ██╔════╝██╔══██╗██╔═══██╗██╔═══██╗████╗  ██║██╔════╝
      ███████╗██████╔╝██║   ██║██║   ██║██╔██╗ ██║███████╗
      ╚════██║██╔═══╝ ██║   ██║██║   ██║██║╚██╗██║╚════██║
      ███████║██║     ╚██████╔╝╚██████╔╝██║ ╚████║███████║
      ╚══════╝╚═╝      ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝

              ██████╗ ███████╗██╗   ██╗███████╗           
              ██╔══██╗██╔════╝██║   ██║██╔════╝           
              ██║  ██║█████╗  ██║   ██║███████╗           
              ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║           
              ██████╔╝███████╗ ╚████╔╝ ███████║           
              ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝           
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "overcache/NeoSolarized",
    -- opts = function()
    --   return {
    --     config = function()
    --       vim.cmd([[
    --         try
    --           syntax on
    --           set termguicolors
    --           " let g:neosolarized_termBoldAsBright = 0
    --           " let g:neosolarized_contrast = "normal"
    --           " let g:neosolarized_visibility = "normal"
    --           " let g:neosolarized_vertSplitBgTrans = 0
    --           " let g:neosolarized_bold = 1
    --           " let g:neosolarized_underline = 1
    --           " let g:neosolarized_italic = 1
    --
    --           colorscheme NeoSolarized
    --           " Overriding colors
    --           " hi Special guifg=#268bd2 " gui_blue fg_blue
    --           hi Special guifg=#b58900 " yellow
    --           hi Delimiter guifg=#cb4b16 " orange"
    --           hi Identifier guifg=#a2a2a2
    --           hi Normal guibg=NONE ctermbg=NONE
    --           hi LineNr guibg=NONE ctermbg=NONE
    --           hi SignColumn guibg=NONE ctermbg=NONE
    --           hi EndOfBuffer guibg=NONE ctermbg=NONE
    --         catch /^Vim\%((\a\+)\)\=:E185/
    --           colorscheme default
    --           set background=dark
    --         endtry
    --       ]])
    --     end,
    --   }
    -- end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    opts = {
      transparent = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
