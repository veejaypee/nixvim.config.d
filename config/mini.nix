{
  pkgs,
  config,
  ...
}: {
  plugins = {
    mini = {
      enable = true;
      modules = {
        icons.style = "glyph";
        ai = {
          n_lines = 500;
        };
        surround = {};
        statusline = {
          use_icons.__raw = "vim.g.have_nerd_font";
        };
      };
    };
  };
  extraConfigLua = ''
    require('mini.statusline').section_location = function()
      return '%2l:%-2v'
    end
  '';
}
