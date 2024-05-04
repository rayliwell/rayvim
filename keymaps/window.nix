{ luaFunction, ... }:
{
  keymaps = [
    {
      key = "<leader>wq";
      action = luaFunction ''
        vim.cmd("wincmd q")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Quit window";
      };
    }

    {
      key = "<leader>wh";
      action = luaFunction ''
        vim.cmd("wincmd h")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Move to left window";
      };
    }

    {
      key = "<leader>wl";
      action = luaFunction ''
        vim.cmd("wincmd l")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Move to right window";
      };
    }

    {
      key = "<leader>wj";
      action = luaFunction ''
        vim.cmd("wincmd j")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Move to below window";
      };
    }

    {
      key = "<leader>wk";
      action = luaFunction ''
        vim.cmd("wincmd k")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Move to above window";
      };
    }

    {
      key = "<leader>wH";
      action = luaFunction ''
        vim.cmd("wincmd v")
        vim.cmd("wincmd h")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Create window to left";
      };
    }

    {
      key = "<leader>wL";
      action = luaFunction ''
        vim.cmd("wincmd v")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Create window to right";
      };
    }

    {
      key = "<leader>wJ";
      action = luaFunction ''
        vim.cmd("wincmd s")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Create window below";
      };
    }

    {
      key = "<leader>wH";
      action = luaFunction ''
        vim.cmd("wincmd s")
        vim.cmd("wincmd k")
      '';
      lua = true;
      mode = "n";
      options = {
        desc = "Create window above";
      };
    }
  ];
}
