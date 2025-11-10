{
  pkgs,
  config,
  ...
}: {
  globals.mapleader = " ";

  keymaps = [
    {
      action = "<C-w><C-h>";
      key = "<C-h>";
      mode = ["n"];
      options.desc = "Move focus to the left window";
    }
    {
      action = "<C-w><C-l>";
      key = "<C-l>";
      mode = ["n"];
      options.desc = "Move focus to the right window";
    }
    {
      action = "<C-w><C-j>";
      key = "<C-j>";
      mode = ["n"];
      options.desc = "Move focus to the lower window";
    }
    {
      action = "<C-w><C-k>";
      key = "<C-k>";
      mode = ["n"];
      options.desc = "Move focus to the upper window";
    }
    {
      action = "<cmd>Oil<cr>";
      key = "-";
      mode = ["n"];
      options.desc = "Open File[-]Browser";
    }
    {
      action = ":%bd\|e#\|bd#<cr>";
      key = "<leader>bdo";
      mode = ["n"];
      options.desc = "[B]uffer [D]elete [O]thers";
    }
  ];
  # keymapsOnEvents = {
  # };
}
