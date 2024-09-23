{ helpers, inputs, ... }:
{

  imports = [ inputs.tree-sitter-rstml.nixvimModule ];

  plugins = {
    mdx = {
      enable = true;
    };

    ts-autotag = {
      enable = true;
    };

    treesitter = {
      enable = true;
      folding = true;

      settings = {
        highlight = {
          enable = true;
        };
        indent.enable = true;
      };
    };
  };

  autoCmd = [
    {
      callback =
        helpers.mkRaw
          # lua
          ''
            function()
              vim.cmd([[
                syntax on

                syntax match Directive /:\w*\(\[.*\]\)\?\({.*}\)\?/ contains=DirectiveName,DirectiveBrackets,DirectiveContents
                syntax match DirectiveName /\w/ contained
                syntax match DirectiveContents /\[.*\]/ contained
                syntax match DirectiveBrackets /{.*}/ contained contains=DirectiveWord,DirectiveEquals,DirectiveString
                syntax match DirectiveWord /\w/ contained
                syntax match DirectiveEquals /=/ contained
                syntax match DirectiveString /"[^"]*"/ contained

                highlight link Directive @tag.delimiter
                highlight link DirectiveName @tag
                highlight link DirectiveContents @punctuation.delimiter
                highlight link DirectiveBrackets @punctuation.delimiter
                highlight link DirectiveWord @tag.attribute
                highlight link DirectiveEquals @operator
                highlight link DirectiveString @string

                highlight link @markup.link.markdown_inline @punctuation.delimiter
                highlight link @markup.link.label.markdown_inline @tag.attribute
              ]])
            end
          '';
      event = [
        "BufEnter"
      ];
      pattern = [
        "*.md"
        "*.mdx"
      ];
    }
  ];
}
