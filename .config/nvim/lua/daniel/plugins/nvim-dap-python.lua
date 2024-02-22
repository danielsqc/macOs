
return {
  "mfussenegger/nvim-dap-python",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    local path = "~/.pyenv/versions/rialto/bin/python"
    require("dap-python").setup(path)
  end,
}
