inputs: {
  mdx = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': {
        mdx = prev.vimUtils.buildVimPlugin {
          name = "mdx";
          src = inputs.mdx;
        };
      }
    );
  };

  nvim-lsp-file-operations = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': {
        nvim-lsp-file-operations = prev.vimUtils.buildVimPlugin {
          name = "nvim-lsp-file-operations";
          doCheck = false;
          src = inputs.nvim-lsp-file-operations;
        };
      }
    );
  };
}
