{ ... }:
{
  imports = [ ./buffer.nix ];

  keymaps = [
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
