{ config, lib, pkgs, ... }:

{
  programs.nvf = {
    enable = true;
    settings.vim = {
      keymaps = [
        # --- Find ---
        { mode = "n"; key = "<leader><space>"; action = "<cmd>FzfLua files<cr>";        desc = "Find Files (cwd)"; }
        { mode = "n"; key = "<leader>ff";      action = "<cmd>FzfLua files<cr>";        desc = "Find Files"; }
        { mode = "n"; key = "<leader>fg";      action = "<cmd>FzfLua git_files<cr>";    desc = "Find Git Files"; }
        { mode = "n"; key = "<leader>fr";      action = "<cmd>FzfLua oldfiles<cr>";     desc = "Recent Files"; }
        { mode = "n"; key = "<leader>fb";      action = "<cmd>FzfLua buffers<cr>";      desc = "Buffers"; }
      
        # --- Search ---
        { mode = "n"; key = "<leader>/";       action = "<cmd>FzfLua live_grep<cr>";    desc = "Grep (cwd)"; }
        { mode = "n"; key = "<leader>sg";      action = "<cmd>FzfLua live_grep<cr>";    desc = "Live Grep"; }
        { mode = "n"; key = "<leader>sw";      action = "<cmd>FzfLua grep_cword<cr>";   desc = "Word under cursor"; }
        { mode = "v"; key = "<leader>sw";      action = "<cmd>FzfLua grep_visual<cr>";  desc = "Selection"; }
        { mode = "n"; key = "<leader>sr";      action = "<cmd>FzfLua resume<cr>";       desc = "Resume last search"; }
        { mode = "n"; key = "<leader>sh";      action = "<cmd>FzfLua help_tags<cr>";    desc = "Help Tags"; }
        { mode = "n"; key = "<leader>sk";      action = "<cmd>FzfLua keymaps<cr>";      desc = "Key Maps"; }
        { mode = "n"; key = "<leader>sc";      action = "<cmd>FzfLua commands<cr>";     desc = "Commands"; }
        { mode = "n"; key = "<leader>sd";      action = "<cmd>FzfLua diagnostics_document<cr>"; desc = "Document Diagnostics"; }
        { mode = "n"; key = "<leader>sD";      action = "<cmd>FzfLua diagnostics_workspace<cr>"; desc = "Workspace Diagnostics"; }
        { mode = "n"; key = "<leader>sm";      action = "<cmd>FzfLua marks<cr>";        desc = "Marks"; }
        { mode = "n"; key = "<leader>sR";      action = "<cmd>FzfLua registers<cr>";    desc = "Registers"; }
        { mode = "n"; key = "<leader>,";       action = "<cmd>FzfLua buffers<cr>";      desc = "Switch Buffer"; }
        { mode = "n"; key = "<leader>:";       action = "<cmd>FzfLua command_history<cr>"; desc = "Command History"; }
      
        # --- Git ---
        { mode = "n"; key = "<leader>gc";      action = "<cmd>FzfLua git_commits<cr>";  desc = "Git commits"; }
        { mode = "n"; key = "<leader>gs";      action = "<cmd>FzfLua git_status<cr>";   desc = "Git status"; }
      
        # --- LSP (LazyVim also wires these through its picker) ---
        { mode = "n"; key = "gd";              action = "<cmd>FzfLua lsp_definitions<cr>";      desc = "Goto Definition"; }
        { mode = "n"; key = "gr";              action = "<cmd>FzfLua lsp_references<cr>";       desc = "References"; }
        { mode = "n"; key = "gI";              action = "<cmd>FzfLua lsp_implementations<cr>";  desc = "Goto Implementation"; }
        { mode = "n"; key = "gy";              action = "<cmd>FzfLua lsp_typedefs<cr>";         desc = "Goto Type Definition"; }
        { mode = "n"; key = "<leader>ss";      action = "<cmd>FzfLua lsp_document_symbols<cr>"; desc = "Document Symbols"; }
        { mode = "n"; key = "<leader>sS";      action = "<cmd>FzfLua lsp_live_workspace_symbols<cr>"; desc = "Workspace Symbols"; }
      ];

      statusline.lualine.enable = true;
      terminal.toggleterm = {
        enable = true;
        lazygit.enable = true;
      };
      binds.whichKey.enable = true;
      utility.oil-nvim.enable = true;
      git.gitsigns.enable = true;
      ui.noice.enable = true;
      tabline.nvimBufferline = {
        enable = true;
        setupOpts.options = {
          numbers = "none";
          indicator.style = "none";
        };
        mappings = {
          closeCurrent = "bd";
          cycleNext = "L";
          cyclePrevious = "H";
        };
      };
      fzf-lua.enable = true;
    };
  };
}
