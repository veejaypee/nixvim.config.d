{
  pkgs,
  config,
  ...
}: {
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
    keymaps = {
      "<leader>fs" = {
        action = "grep_string";
        options.desc = "Telescope live grep";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Telescope live grep";
      };
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Telescope find files";
      };
      "<leader>ft" = {
        action = "treesitter";
        options.desc = "Telescope find files";
      };
      "<leader><leader>" = {
        action = "buffers";
        options.desc = "Telescope buffers";
      };
    };
  };
}
