{
  plugins = {
    "conform-nvim" = {
      enable = true;

      formatOnSave = {
        lspFallback = true;
        timeoutMs = 500;
      };

      formattersByFt = {
        nix = [ "nixfmt" ];
        python = [ "black" ];

        javascript = [ "prettier" ];
        typescript = [ "prettier" ];
        html = [ "prettier" ];
        json = [ "prettier" ];
        jsonc = [ "prettier" ];
        yaml = [ "prettier" ];

        astro = [ "prettier" ];
      };
    };
  };
}
