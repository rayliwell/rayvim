{ pkgs, ... }:
{
  plugins = {
    "conform-nvim" = {
      enable = true;

      settings = {
        notify_on_error = false;

        format_on_save = {
          lspFallback = true;
          timeoutMs = 500;
        };

        formatters_by_ft = with pkgs; {
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
  };
}
