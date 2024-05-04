{ ... }:
{
  imports = [
    ./keymaps
    ./modules
  ];

  globals = {
    mapleader = " ";
  };

  opts = {
    # Show (relative) line numbers.
    number = true;
    relativenumber = true;
    # Highlight the line the cursor is on.
    cursorline = true;
    # Enable mouse mode.
    mouse = "a";
    # TODO: See ":help 'showmode'".
    showmode = false;
    # TODO: See ":help 'clipboard'".
    clipboard = "unnamedplus";
    # Ensure new line keeps the same indentation level.
    breakindent = true;
    # TODO: Save undo history.
    undofile = true;
    # Search is case-insensitive unless it contains capital letters.
    ignorecase = true;
    smartcase = true;
    # Enable "sign column" (equivalent to Emacs fringes).
    signcolumn = "yes";
    # TODO: Time to wait after changes before writing swapfile.
    updatetime = 500;
    # TODO: See ":help 'timeoutlen'" and ":help 'ttimeoutlen'".
    timeoutlen = 300;
    # How splits should be opened.
    splitright = true;
    splitbelow = true;
    # Show whitespace characters.
    list = true;
    listchars = {
      tab = "» ";
      trail = "·";
      nbsp = "␣";
    };
    # Show substitutions in the buffer while typing (instead of in a seperate window).
    inccommand = "nosplit";
    # TODO: See ":help 'scrolloff'".
    scrolloff = 999;
  };

  colorschemes = {
    catppuccin.enable = true;
  };
}