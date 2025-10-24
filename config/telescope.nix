{
  pkgs,
  config,
  ...
}: {
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
    };
    settings = {
      defaults = {
        path_display = {
          filename_first = {
            reverse_directories = true;
          };
        };
      };
    };
  };
}
