inputs: {
  neovim-nightly = inputs.neovim-nightly-overlay.overlay;

  neogit-nightly = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': { neogit = prev'.neogit.overrideAttrs { src = inputs.neogit; }; }
    );
  };
}
