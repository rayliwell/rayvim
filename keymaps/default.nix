{ helpers, ... }:
{
  imports = [
    ./buffer.nix
    ./help.nix
    ./code.nix
    ./git.nix
    ./window.nix
    ./file.nix
  ];

  keymaps = [
    {
      key = "<leader><leader>";
      action = helpers.mkRaw "require('telescope.builtin').find_files";
      mode = "n";
      options = {
        desc = "Find files";
      };
    }

    {
      key = "<leader>/";
      action = helpers.mkRaw "require('telescope.builtin').live_grep";
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
