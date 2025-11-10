{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./autocommand.nix
    ./keymaps.nix
    ./plugins.nix
  ];

  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  opts = {
    mouse = "a";
    number = true;
    relativenumber = true;
    shiftround = true;
    shiftwidth = 2;
    showmode = false;
    tabstop = 2;
    softtabstop = 0;
    expandtab = true;
    cursorline = true;
    cursorlineopt = "both";
    breakindent = true;
    undofile = true;
    ignorecase = true;
    smartcase = true;
    signcolumn = "yes";
    updatetime = 250;
    timeoutlen = 300;
    splitright = true;
    splitbelow = true;
    list = true;
    listchars = {
      tab = "» ";
      trail = "·";
      nbsp = "␣";
    };
    inccommand = "split";
    scrolloff = 10;
    confirm = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
    };
  };
}
