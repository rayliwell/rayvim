{ ... }:
{
  imports = [
    ./buffer.nix
    ./help.nix
    ./code.nix
    ./git.nix
    ./window.nix
  ];

  keymaps = [
    {
      key = "<leader><leader>";
      action = "require('telescope').extensions.file_browser.file_browser";
      lua = true;
      mode = "n";
      options = {
        desc = "File browser";
      };
    }

    {
      key = "<leader><C- >";
      action = "require('telescope').extensions['neovim-project'].discover";
      lua = true;
      mode = "n";
      options = {
        desc = "Browse projects";
      };
    }

    {
      key = "<leader>/";
      action = "require('telescope.builtin').live_grep";
      lua = true;
      mode = "n";
      options = {
        desc = "Search";
      };
    }

    {
      key = "<leader>q";
      action = ":quitall<cr>";
      mode = "n";
      options = {
        desc = "Quit neovim";
      };
    }

    {
      key = "<leader>Q";
      action = ":quitall!<cr>";
      mode = "n";
      options = {
        desc = "Quit neovim (without saving)";
      };
    }
  ];
}
