{ ... }:
{
  imports = [
    ./buffer.nix
    ./help.nix
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
