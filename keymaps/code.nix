{ helpers, ... }:
{
  keymapCategories."c" = "Code";

  keymaps = [
    {
      key = "<leader>cd";
      action = helpers.mkRaw "require('telescope.builtin').lsp_definitions";
      mode = "n";
      options = {
        desc = "See definitions";
      };
    }

    {
      key = "<leader>ck";
      action = helpers.mkRaw "vim.lsp.buf.hover";
      mode = "n";
      options = {
        desc = "Documentation";
      };
    }

    {
      key = "<leader>ct";
      action = helpers.mkRaw "require('telescope.builtin').lsp_type_definitions";
      mode = "n";
      options = {
        desc = "Type definition";
      };
    }

    {
      key = "<leader>cs";
      action = helpers.mkRaw "require('telescope.builtin').lsp_document_symbols";
      mode = "n";
      options = {
        desc = "See symbols";
      };
    }

    {
      key = "<leader>cS";
      action = helpers.mkRaw "require('telescope.builtin').lsp_workspace_symbols";
      mode = "n";
      options = {
        desc = "All symbols";
      };
    }

    {
      key = "<leader>ci";
      action = helpers.mkRaw "require('telescope.builtin').lsp_implementations";
      mode = "n";
      options = {
        desc = "See implementations";
      };
    }

    {
      key = "<leader>cD";
      action = helpers.mkRaw "vim.lsp.buf.declaration";
      mode = "n";
      options = {
        desc = "Goto declaration";
      };
    }

    {
      key = "<leader>cr";
      action = helpers.mkRaw "vim.lsp.buf.rename";
      mode = "n";
      options = {
        desc = "Rename";
      };
    }

    {
      key = "<leader>cR";
      action = helpers.mkRaw "require('telescope.builtin').lsp_references";
      mode = "n";
      options = {
        desc = "Goto references";
      };
    }
  ];
}
