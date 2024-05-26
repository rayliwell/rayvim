{
  plugins = {
    telescope = {
      enable = true;

      settings = {
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
