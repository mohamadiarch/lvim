

---------------------------autocmd--------------------------
-- if neovim bcome slow use this instead:
-- autocmd FileType NvimTree nnoremap <buffer> J 5j
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = "NvimTree",
--   callback = function()
--     vim.api.nvim_buf_set_keymap(0, "n", "<c-j>", "5j", { noremap = true, silent = true })
--   end,
-- })
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = "NvimTree",
--   callback = function()
--     vim.api.nvim_buf_set_keymap(0, "n", "<c-h>", "5k", { noremap = true, silent = true })
--   end,
-- })

-------------------------------------------------------------
local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"
    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    local useful_keys = {
  --   --   ["gj"] = { api.node.navigate.sibling.first, opts "First" },
  --   --   ["gk"] = { api.node.navigate.sibling.last, opts "Last" },
            ["<C-e>"]  ={ api.node.open.replace_tree_buffer, opts "Open: In Place             "},
            ["<C-]>"]  ={ api.tree.change_root_to_node, opts "CD                         "},
            ["<C-k>"]  ={ api.node.show_info_popup, opts "Info                       "},
            ["<C-r>"]  ={ api.fs.rename_sub, opts "Rename: Omit Filename      "},
            ["<C-t>"]  ={ api.node.open.tab, opts "Open: New Tab              "},
            ["<C-v>"]  ={ api.node.open.vertical, opts "Open: Vertical Split       "},
            ["<C-x>"]  ={ api.node.open.horizontal, opts "Open: Horizontal Split     "},
            ["<BS>"]   ={ api.node.navigate.parent_close, opts "Close Directory            "},
            ["<CR>"]   ={ api.node.open.edit, opts "Open                       "},
            ["<Tab>"]  ={ api.node.open.preview, opts "Open Preview               "},
            [">"]      ={ api.node.navigate.sibling.next, opts "Next Sibling               "},
            ["<"]      ={ api.node.navigate.sibling.prev, opts "Previous Sibling           "},
            ["."]      ={ api.node.run.cmd, opts "Run Command                "},
            ["-"]      ={ api.tree.change_root_to_parent, opts "Up                         "},
            ["a"]      ={ api.fs.create, opts "Create File Or Directory   "},
            ["bd"]     ={ api.marks.bulk.delete, opts "Delete Bookmarked          "},
            ["bt"]     ={ api.marks.bulk.trash, opts "Trash Bookmarked           "},
            ["bmv"]    ={ api.marks.bulk.move, opts "Move Bookmarked            "},
            ["B"]      ={ api.tree.toggle_no_buffer_filter, opts "Toggle Filter: No Buffer   "},
            ["c"]      ={ api.fs.copy.node, opts "Copy                       "},
            ["C"]      ={ api.tree.toggle_git_clean_filter, opts "Toggle Filter: Git Clean   "},
            ["[c"]     ={ api.node.navigate.git.prev, opts "Prev Git                   "},
            ["]c"]     ={ api.node.navigate.git.next, opts "Next Git                   "},
            ["d"]      ={ api.fs.remove, opts "Delete                     "},
            ["D"]      ={ api.fs.trash, opts "Trash                      "},
            ["E"]      ={ api.tree.expand_all, opts "Expand All                 "},
            ["e"]      ={ api.fs.rename_basename, opts "Rename: Basename           "},
            ["]e"]     ={ api.node.navigate.diagnostics.next, opts "Next Diagnostic            "},
            ["[e"]     ={ api.node.navigate.diagnostics.prev, opts "Prev Diagnostic            "},
            ["F"]      ={ api.live_filter.clear, opts "Live Filter: Clear         "},
            ["f"]      ={ api.live_filter.start, opts "Live Filter: Start         "},
            ["g?"]     ={ api.tree.toggle_help, opts "Help                       "},
            ["gy"]     ={ api.fs.copy.absolute_path, opts "Copy Absolute Path         "},
            ["H"]      ={ api.tree.toggle_hidden_filter, opts "Toggle Filter: Dotfiles    "},
            ["I"]      ={ api.tree.toggle_gitignore_filter, opts "Toggle Filter: Git Ignore  "},
            ["gj"]      ={ api.node.navigate.sibling.last, opts "Last Sibling               "},
            ["gk"]      ={ api.node.navigate.sibling.first, opts "First Sibling              "},
            ["M"]      ={ api.tree.toggle_no_bookmark_filter, opts "Toggle Filter: No Bookmark "},
            ["m"]      ={ api.marks.toggle, opts "Toggle Bookmark            "},
            ["o"]      ={ api.node.open.edit, opts "Open                       "},
            ["O"]      ={ api.node.open.no_window_picker, opts "Open: No Window Picker     "},
            ["p"]      ={ api.fs.paste, opts "Paste                      "},
            ["P"]      ={ api.node.navigate.parent, opts "Parent Directory           "},
            ["q"]      ={ api.tree.close, opts "Close                      "},
            ["r"]      ={ api.fs.rename, opts "Rename                     "},
            ["R"]      ={ api.tree.reload, opts "Refresh                    "},
            ["s"]      ={ api.node.run.system, opts "Run System                 "},
            ["S"]      ={ api.tree.search_node, opts "Search                     "},
            ["u"]      ={ api.fs.rename_full, opts "Rename: Full Path          "},
            ["U"]      ={ api.tree.toggle_custom_filter, opts "Toggle Filter: Hidden      "},
            ["W"]      ={ api.tree.collapse_all, opts "Collapse                   "},
            ["x"]      ={ api.fs.cut, opts "Cut                        "},
            ["y"]      ={ api.fs.copy.filename, opts "Copy Name                  "},
            ["Y"]      ={ api.fs.copy.relative_path, opts "Copy Relative Path         "},
            ["<2-LeftMouse>"]  ={  api.node.open.edit, opts "Open                       "},
            -- ["<2-RightMouse>"] ={ api.tree.change_root_to_node(), opts "CD"}
    }
    require("lvim.keymappings").load_mode("n", useful_keys)
    -- vim.keymap.set('n', 'gj', api.node.navigate.sibling.first,        opts('Up'))
    -- vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  end
  lvim.builtin.nvimtree.setup.on_attach=my_on_attach