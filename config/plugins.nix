{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./alpha.nix
    ./cmp.nix
    ./codecompanion.nix
    ./gitsigns.nix
    ./java.nix
    ./lsp.nix
    ./opencode.nix
    ./orgmode.nix
    ./telescope.nix
    ./snacks.nix
    ./which-key.nix
  ];
  plugins = {
    auto-save.enable = false;
    auto-session.enable = true;
    nvim-autopairs.enable = true;
    lualine.enable = true;
    undotree.enable = true;
    oil.enable = true;
    web-devicons.enable = true;
    tmux-navigator.enable = true;
    markdown-preview.enable = true;
    guess-indent.enable = true;
    indent-blankline.enable = true;
    todo-comments = {
      enable = true;
      settings.signs = true;
    };
  };
}
