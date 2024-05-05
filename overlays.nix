inputs: {
  neovim-nightly = inputs.neovim-nightly-overlay.overlay;

  neogit-nightly = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': { neogit = prev'.neogit.overrideAttrs { src = inputs.neogit; }; }
    );
  };

  neovim-project = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': {
        neovim-project = prev.vimUtils.buildVimPlugin {
          name = "neovim-project";
          src = inputs.neovim-project;
        };
      }
    );
  };

  neovim-session-manager = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': {
        neovim-session-manager = prev.vimUtils.buildVimPlugin {
          name = "neovim-session-manager";
          src = inputs.neovim-session-manager;
        };
      }
    );
  };
}
