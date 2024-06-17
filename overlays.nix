inputs: {
  nvim-lsp-file-operations = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': {
        nvim-lsp-file-operations = prev.vimUtils.buildVimPlugin {
          name = "nvim-lsp-file-operations";
          src = inputs.nvim-lsp-file-operations;
        };
      }
    );
  };
}
