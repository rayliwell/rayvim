{
  keymapCategories."c" = "Code";

  keymaps = [
    {
      key = "<leader>cd";
      action = "require('telescope.builtin').lsp_definitions";
      lua = true;
      mode = "n";
      options = { desc = "See definitions"; };
    }

    {
      key = "<leader>ck";
      action = "vim.lsp.buf.hover";
      lua = true;
      mode = "n";
      options = { desc = "Documentation"; };
    }

    {
      key = "<leader>ct";
      action = "require('telescope.builtin').lsp_type_definitions";
      lua = true;
      mode = "n";
      options = { desc = "Type definition"; };
    }

    {
      key = "<leader>cs";
      action = "require('telescope.builtin').lsp_document_symbols";
      lua = true;
      mode = "n";
      options = { desc = "See symbols"; };
    }

    {
      key = "<leader>cS";
      action = "require('telescope.builtin').lsp_workspace_symbols";
      lua = true;
      mode = "n";
      options = { desc = "All symbols"; };
    }

    {
      key = "<leader>ci";
      action = "require('telescope.builtin').lsp_implementations";
      lua = true;
      mode = "n";
      options = { desc = "See implementations"; };
    }

    {
      key = "<leader>cD";
      action = "vim.lsp.buf.declaration";
      lua = true;
      mode = "n";
      options = { desc = "Goto declaration"; };
    }

    {
      key = "<leader>cr";
      action = "vim.lsp.buf.rename";
      lua = true;
      mode = "n";
      options = { desc = "Rename"; };
    }

    {
      key = "<leader>cR";
      action = "require('telescope.builtin').lsp_references";
      lua = true;
      mode = "n";
      options = { desc = "Goto references"; };
    }
  ];
}
