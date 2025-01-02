{
  plugins = {
    telescope = {
      enable = true;

      extensions = {
        fzf-native = {
          enable = true;
        };
      };

      settings = {
        defaults = {
          layout_config = {
            horizontal = {
              width = 0.9;
            };
          };
        };

        pickers.find_files = {
          find_command = [
            "fd"
            "--hidden"
            "--exclude"
            ".git"
            "--type"
            "f"
            "--color"
            "never"
          ];
        };
      };
    };
  };
}
