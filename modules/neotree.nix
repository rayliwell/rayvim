{ pkgs, ... }:
{
  plugins = {
    lsp-file-operations = {
      enable = true;
    };

    neo-tree = {
      enable = true;

      window = {
        width = 32;
        autoExpandWidth = true;

        mappings = {
          "<tab>" = "toggle_directory";
        };
      };

      popupBorderStyle = "rounded";
      enableGitStatus = false;

      extraOptions = {
        use_libuv_file_watcher = true;
      };
    };
  };
}
