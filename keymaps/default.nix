{ ... }: {
  imports =
    [ ./buffer.nix ./help.nix ./code.nix ./git.nix ./window.nix ./file.nix ];

  keymaps = [
    {
      key = "<leader><leader>";
      action = "require('telescope.builtin').find_files";
      lua = true;
      mode = "n";
      options = { desc = "File browser"; };
    }

    {
      key = "<leader>/";
      action = "require('telescope.builtin').live_grep";
      lua = true;
      mode = "n";
      options = { desc = "Search"; };
    }

    {
      key = "<leader>q";
      action = ":quitall<cr>";
      mode = "n";
      options = { desc = "Quit neovim"; };
    }

    {
      key = "<leader>Q";
      action = ":quitall!<cr>";
      mode = "n";
      options = { desc = "Quit neovim (without saving)"; };
    }
  ];
}
