return {
  {
    "nvim-lualine/lualine.nvim",

    opts = function(_, opts)
      local function macro_recording()
        local reg = vim.fn.reg_recording()

        if reg ~= "" then
          return "Recording @" .. reg
        end

        return ""
      end

      -- Refresh lualine when macro recording starts/stops
      vim.api.nvim_create_autocmd("RecordingEnter", {
        callback = function()
          require("lualine").refresh()
        end,
      })

      vim.api.nvim_create_autocmd("RecordingLeave", {
        callback = function()
          require("lualine").refresh()
        end,
      })

      -- Your existing configuration
      opts.options = {
        component_separators = "",
        section_separators = "",
        icons_enabled = false,
      }

      opts.sections = {
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

        lualine_x = {
          macro_recording,
          "filesize",
          "location",
        },

        lualine_y = {},
        lualine_z = {},
      }
    end,
  },
}
