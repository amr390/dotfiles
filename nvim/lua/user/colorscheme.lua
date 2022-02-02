vim.cmd [[
try
  colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

--- " Default value is "normal", Setting this option to "high" or "low" does use the
--- " same Solarized palette but simply shifts some values up or down in order to
--- " expand or compress the tonal range displayed.
--- let g:neosolarized_contrast = "normal"
--- 
--- " Special characters such as trailing whitespace, tabs, newlines, when displayed
--- " using ":set list" can be set to one of three levels depending on your needs.
--- " Default value is "normal". Provide "high" and "low" options.
--- let g:neosolarized_visibility = "normal"
--- 
--- " I make vertSplitBar a transparent background color. If you like the origin
--- " solarized vertSplitBar style more, set this value to 0.
--- let g:neosolarized_vertSplitBgTrans = 1
--- 
--- " If you wish to enable/disable NeoSolarized from displaying bold, underlined
--- " or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
--- " Default values:
--- let g:neosolarized_bold = 1
--- let g:neosolarized_underline = 1
--- let g:neosolarized_italic = 0
--- 
--- " Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
--- " text output by commands like `ls` aren't what you expect, you might want to
--- " try disabling this option. Default value:
--- let g:neosolarized_termBoldAsBright = 1

-- ************************** NeoSolarized ****************************
-- vim.cmd [[
-- try
--   syntax on
--   let g:neosolarized_termBoldAsBright = 1
--   let g:neosolarized_contrast = "low"
--   let g:neosolarized_visibility = "high"
--   let g:neosolarized_vertSplitBgTrans = 1
--   let g:neosolarized_bold = 1
--   let g:neosolarized_underline = 1
--   let g:neosolarized_italic = 0
--   
--   colorscheme NeoSolarized
--   hi Normal guibg=NONE ctermbg=NONE
--   hi LineNr guibg=NONE ctermbg=NONE
--   hi SignColumn guibg=NONE ctermbg=NONE
--   hi EndOfBuffer guibg=NONE ctermbg=NONE
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
-- ************************** OceanicNext ****************************
-- vim.cmd [[
-- try
--   syntax on
--   let g:oceanic_next_terminal_bold = 1
--   let g:oceanic_next_terminal_italic = 1
--   colorscheme OceanicNext
--   hi Normal guibg=NONE ctermbg=NONE
--   hi LineNr guibg=NONE ctermbg=NONE
--   hi SignColumn guibg=NONE ctermbg=NONE
--   hi EndOfBuffer guibg=NONE ctermbg=NONE
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
--
