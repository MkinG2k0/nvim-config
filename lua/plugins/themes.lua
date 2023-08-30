return {
'Mofiqul/vscode.nvim',
 {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'vscode'
    end
}, {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
        options = {
            icons_enabled = false,
            theme = 'vscode',
            component_separators = '|',
            section_separators = ''
        }
    }
}

}
