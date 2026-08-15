-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[
  highlight Normal guibg=NONE
  highlight NormalNC guibg=NONE
  highlight NormalFloat guibg=NONE
  highlight SignColumn guibg=NONE
  highlight LineNr guibg=NONE
  highlight CursorLineNr guibg=NONE
  highlight StatusLine guibg=#212121 guifg=#f8f0e2
  highlight WinSeparator guibg=NONE
  highlight EndOfBuffer guibg=NONE
  highlight CursorLineNr guifg=#f8f0e3
]])

vim.api.nvim_set_hl(0, "MatchParen", {
  fg = "#f8f0e2",
  bg = "NONE",
  bold = false,
  underline = false,
})

vim.api.nvim_set_hl(0, "@punctuation.bracket", {
  fg = "#f8f0e2",
  bg = "NONE",
  bold = false,
})
