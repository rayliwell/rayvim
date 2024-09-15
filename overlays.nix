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
          src = inputs.nvim-lsp-file-operations;
        };
      }
    );
  };

  tailwind-tools = final: prev: {
    vimPlugins = prev.vimPlugins.extend (
      final': prev': {
        tailwind-tools = prev.vimUtils.buildVimPlugin {
          name = "tailwind-tools";
          src = inputs.tailwind-tools;
        };
      }
    );
  };
}
