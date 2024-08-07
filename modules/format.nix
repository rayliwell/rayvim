{ pkgs, ... }:
{
  plugins = {
    "conform-nvim" = {
      enable = true;

      notifyOnError = false;

      formatOnSave = {
        lspFallback = true;
        timeoutMs = 500;
      };

      formattersByFt = with pkgs; {
        lua = [ "${stylua}/bin/stylua" ];

        nix = [ "nixfmt" ];
        python = [ "black" ];

        javascript = [ "prettier" ];
        javascriptreact = [ "prettier" ];
        typescript = [ "prettier" ];
        typescriptreact = [ "prettier" ];
        html = [ "prettier" ];
        json = [ "prettier" ];
        jsonc = [ "prettier" ];
        yaml = [ "prettier" ];
        markdown = [ "prettier" ];

        astro = [ "prettier" ];
      };
    };
  };
}
