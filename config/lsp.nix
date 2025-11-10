{
  pkgs,
  config,
  ...
}:
{
  autoGroups = {
    "kickstart-lsp-attach" = {
      clear = true;
    };
  };
  lsp = {
    servers = {
      rust_analyzer = {
        enable = true;
      };
      bashls.enable = true;
      ts_ls.enable = true;
      angularls = {
        enable = true;
      };
      ## vscode-langservers-extracted:
      eslint.enable = true;
      jsonls.enable = true;
      html.enable = true;
      cssls.enable = true;
      lua_ls = {
        enable = true;
        config.completion.callSnippet = "Replace";
      };
      # nil_ls.enable = true;
    };
    keymaps = [
      {
        key = "[d";
        lspBufAction = "goto_next";
        options.desc = "Goto next diagnostic";
      }
      {
        key = "]d";
        lspBufAction = "goto_prev";
        options.desc = "Goto previous diagnostic";
      }
      {
        key = "gl";
        lspBufAction = "open_float";
        options.desc = "Open float";
      }
      {
        key = "K";
        lspBufAction = "hover";
        options.desc = "LSP: Hover";
      }
      {
        key = "ga";
        lspBufAction = "code_action";
        options.desc = "LSP: [G]o do code [A]ction";
      }
      {
        key = "gr";
        lspBufAction = "references";
        options.desc = "LSP: [G]oto [R]eferences";
      }
      {
        key = "gd";
        lspBufAction = "definition";
        options.desc = "LSP: [G]oto [D]efinition";
      }
      {
        key = "gD";
        lspBufAction = "declaration";
        options.desc = "LSP: [G]oto [D]eclaration";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
        options.desc = "LSP: [G]oto [I]mplementation";
      }
      {
        key = "gt";
        lspBufAction = "type_definition";
        options.desc = "LSP: [G]oto [T]ype definition";
      }
      {
        key = "gs";
        lspBufAction = "signature_help";
        options.desc = "LSP: [G]oto [S]ignature help";
      }
      {
        key = "<F2>";
        lspBufAction = "rename";
        options.desc = "LSP: Rename variable";
      }
    ];
  };
  plugins = {
    lsp.enable = true;
    fidget.enable = true;
    lazydev = {
      enable = true;
      settings = {
        library = [
          {
            path = "\${3rd}/luv/library";
            words = [ "vim%.uv" ];
          }
        ];
      };
    };
    # none-ls = {
    #   enable = true;
    #   enableLspFormat = true;
    #   sources.formatting = {
    #     alejandra.enable = true;
    #   };
    # };
    lsp-format.enable = true;
    lsp-lines.enable = true;
    lsp-status.enable = true;
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    lint.enable = true;
    nix.enable = true;
    treesitter = {
      enable = true;
      settings = {
        auto_install = true;
        highlight.enable = true;
      };
    };
    rainbow-delimiters.enable = true;
    trouble = {
      enable = false;
      settings.modes = {
        diagnostics = {
          auto_open = true;
          auto_close = true;
        };
      };
    };
  };
}
