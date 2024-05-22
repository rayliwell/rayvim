{ ... }:
{
  imports = [
    ./lsp.nix
    ./git.nix
    ./direnv.nix
    ./indent.nix
    ./format.nix
    ./todo.nix
    ./completion.nix
    ./rainbow-delimiters.nix
    ./treesitter.nix
    ./which-key.nix
    ./telescope.nix
  ];
}
