return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        component_separators = "",
        section_separators = "",
        icons_enabled = false,
      },

      sections = {
        lualine_a = {
          {
            "mode",
            color = {
              bg = "#ebdbb2",
              fg = "#212121",
            },
            padding = {
              left = 1,
              right = 1,
            },
          },
        },

        lualine_b = {},
        lualine_c = {
          function()
            return vim.fn.expand("%:~:.")
          end,
        },
        lualine_x = { "filesize", "location" },
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
