return {
  "mfussenegger/nvim-dap-python",
  dependencies = {
    "mfussenegger/nvim-dap",
    "microsoft/debugpy",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local path = "~/.virtualenvs/debugpy/bin/python"
    require("dap-python").test_runner = "pytest"
    require("dap-python").setup(path)
    table.insert(require("dap").configurations.python, {
      name = "QA remote k8s attach",
      type = "debugpy",
      request = "attach",
      program = "${file}",
      connect =  {
          host = "127.0.0.1",
          port = 3000,
        },
      pathMappings = {
        {
          localRoot = "${workspaceFolder}",
          remoteRoot = "/root/qa",
        },
      },
    })
    table.insert(require("dap").configurations.python, {
      name = "K8s attach",
      type = "python",
      request = "attach",
      program = "${file}",
      connect =  {
        host = "127.0.0.1",
        port = 3000,
      },
      mode = "remote",
      pathMappings = {
        {
          localRoot = "${workspaceFolder}",
          remoteRoot = "/root/qa",
        },
      },
    })
  end,
}
