require("formatter").setup {
  filetype = {
    cpp = {
      function()
        return {
          exe = "clang-format",
          stdin = true
        }
      end
    },
    javascript = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
            "--single-quote"
          },
          stdin = true
        }
      end
    },
    lua = {
      function()
        return {
          exe = "luafmt",
          args = {
            "--indent-count",
            2,
            "--stdin"
          },
          stdin = true
        }
      end
    },
    proto = {
      function()
        return {
          exe = "buildifier",
          stdin = true
        }
      end
    },
    python = {
      function()
        return {
          exe = "black",
          args = {
            "-l",
            80,
            "-q",
            "-"
          },
          stdin = true
        }
      end
    }
  }
}
