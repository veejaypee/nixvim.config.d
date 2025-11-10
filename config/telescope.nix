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
      extensions.__raw = "{ ['ui-select'] = { require('telescope.themes').get_dropdown() } }";
    };
    keymaps = {
      "<leader>sd" = {
        mode = "n";
        action = "diagnostics";
        options.desc = "[S]earch [D]iagnostics";
      };
      "<leader>sr" = {
        mode = "n";
        action = "diagnostics";
        options.desc = "[S]earch [R]esume";
      };
      "<leader>sh" = {
        mode = "n";
        action = "help_tags";
        options.desc = "[S]earch [H]elp";
      };
      "<leader>ss" = {
        action = "builtin";
        options.desc = "[S]earch [S]elect Telescope";
      };
      "<leader>sw" = {
        action = "grep_string";
        options.desc = "[S]earch current [W]ord";
      };
      "<leader>sg" = {
        action = "live_grep";
        options.desc = "[S]earch by [G]rep live";
      };
      "<leader>sf" = {
        action = "find_files";
        options.desc = "[S]earch [F]iles";
      };
      "<leader>st" = {
        action = "treesitter";
        options.desc = "[S]earch [T]reesitter";
      };
      "<leader>s." = {
        mode = "n";
        action = "oldfiles";
        options.desc = "[S]earch recent files ('.' for repeat)";
      };
      "<leader><leader>" = {
        action = "buffers";
        options.desc = "[ ] Search list of existing buffers";
      };
    };
    # keymaps = [
    #   {
    #     key = "<leader>/";
    #     mode = "n";
    #     action.__raw = ''
    #       function()
    #           require('telescope.builtin').current_buffer_fuzzy_find(
    #             require('telescope.themes').get_dropdown {
    #               winblend = 10,
    #               previewer = false
    #             }
    #           )
    #           end
    #     '';
    #     options.desc = "[/] Fuzzily search in current buffer";
    #   }
    # {
    #   key = "<leader>s/";
    #   mode = "n";
    #   action.__raw = ''
    #     function()
    #         require('telescope.builtin').live_grep {
    #           grep_open_files = true,
    #           prompt_title = 'Live Grep in Open Files'
    #         }
    #         end
    #   '';
    #   options.desc = "[S]earch [/] in Open Files";
    # }
    # ];
  };
}
