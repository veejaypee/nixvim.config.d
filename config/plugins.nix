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
    ./orgmode.nix
    ./telescope.nix
    ./which-key.nix
  ];
  plugins = {
    auto-save.enable = false;
    auto-session.enable = true;
    mini = {
      enable = true;
      modules.icons.style = "glyph";
    };
    nvim-autopairs.enable = true;
    lualine.enable = true;
    undotree.enable = true;
    oil.enable = true;
    web-devicons.enable = true;
    tmux-navigator.enable = true;
    markdown-preview.enable = true;
  };
}
