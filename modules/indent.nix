{ helpers, ... }:
{
  plugins = {
    guess-indent = {
      enable = true;
    };

    snacks = {
      enable = true;

      settings = {
        indent = {
          enable = true;
        };

        animate = {
          duration = {
            step = 20;
          };
        };
      };
    };
  };

  colorschemes = {
    catppuccin = {
      settings = {
        custom_highlights = helpers.mkRaw ''
          function(colors)
            return {
              SnacksIndent = { fg = colors.surface0 },
              SnacksIndentScope = { fg = colors.surface2 },
            }
          end
        '';
      };
    };
  };
}
