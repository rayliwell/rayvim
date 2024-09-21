{ helpers, luaFunction, ... }:
{
  keymapCategories."w" = "Window";

  keymaps = [
    {
      key = "<leader>wq";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd q")
      '');
      mode = "n";
      options = {
        desc = "Quit window";
      };
    }

    {
      key = "<leader>wh";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd h")
      '');
      mode = "n";
      options = {
        desc = "Move to left window";
      };
    }

    {
      key = "<leader>wl";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd l")
      '');
      mode = "n";
      options = {
        desc = "Move to right window";
      };
    }

    {
      key = "<leader>wj";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd j")
      '');
      mode = "n";
      options = {
        desc = "Move to below window";
      };
    }

    {
      key = "<leader>wk";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd k")
      '');
      mode = "n";
      options = {
        desc = "Move to above window";
      };
    }

    {
      key = "<leader>wH";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd v")
        vim.cmd("wincmd h")
      '');
      mode = "n";
      options = {
        desc = "Create window to left";
      };
    }

    {
      key = "<leader>wL";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd v")
      '');
      mode = "n";
      options = {
        desc = "Create window to right";
      };
    }

    {
      key = "<leader>wJ";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd s")
      '');
      mode = "n";
      options = {
        desc = "Create window below";
      };
    }

    {
      key = "<leader>wK";
      action = helpers.mkRaw (luaFunction ''
        vim.cmd("wincmd s")
        vim.cmd("wincmd k")
      '');
      mode = "n";
      options = {
        desc = "Create window above";
      };
    }
  ];
}
