{
  pkgs,
  config,
  ...
}: {
  globals.mapleader = " ";

  keymaps = [
    {
      action = "<cmd>Oil<cr>";
      key = "-";
      mode = ["n"];
    }
  ];

  plugins = {
    telescope.keymaps = {
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
      "<leader>s" = {
        mode = "n";
        action = "oldfiles";
        options.desc = "[S]earch recent files ('.' for repeat)";
      };
      "<leader><leader>" = {
        action = "buffers";
        options.desc = "[ ] Search list of existing buffers";
      };
    };
    lsp.keymaps = {
      diagnostic = {
        "[d" = {
          action = "goto_next";
          desc = "Goto next diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Goto previous diagnostic";
        };
        "gl" = {
          action = "open_float";
          desc = "Open float";
        };
      };

      lspBuf = {
        K = {
          action = "hover";
          desc = "Hover";
        };
        gr = {
          action = "references";
          desc = "Goto references";
        };
        gd = {
          action = "definition";
          desc = "Goto definition";
        };
        gi = {
          action = "implementation";
          desc = "Goto implementation";
        };
        gt = {
          action = "type_definition";
          desc = "Type definition";
        };
        gs = {
          action = "signature_help";
          desc = "Signature help";
        };
        "<leader>carn" = {
          action = "rename";
          desc = "Rename variable";
        };
      };
    };
  };
}
