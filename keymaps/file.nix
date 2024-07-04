{
  helpers,
  pkgs,
  openExternalProgram,
  ...
}:
{
  keymapCategories."f" = "File";

  keymaps = [
    {
      key = "<leader>ff";
      action = ":Neotree position=current<cr>";
      mode = "n";
      options = {
        desc = "Browser";
      };
    }
    {

      key = "<leader>fe";
      action = helpers.mkRaw (openExternalProgram "${pkgs.sops}/bin/sops");
      mode = "n";
      options = {
        desc = "Open encrypted file";
      };
    }
  ];
}
