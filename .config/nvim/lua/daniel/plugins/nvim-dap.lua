return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python"
  },
  config = function()
    local dap = require('dap')
    local dapui = require("dapui")

    require("dapui").setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<leader>dc', dap.continue, {})
    vim.keymap.set('n', '<leader>dd', dap.disconnect, {})
    vim.keymap.set('n', '<leader>dso', function() require('dap').step_over() end)
    vim.keymap.set('n', '<leader>dsi', function() require('dap').step_into() end)
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function() require('dap.ui.widgets').hover() end)
    vim.keymap.set('n', '<leader>du', dapui.toggle, {})
  end,
}
