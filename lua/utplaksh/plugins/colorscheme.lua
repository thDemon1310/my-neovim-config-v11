local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal",{bg = "none"})
end
return {
    {
	"folke/tokyonight.nvim",
	config = function ()
--	   vim.cmd.colorscheme "tokyonight"
	enable_transparency()
	end
    },
    {
	"rebelot/kanagawa.nvim",
	config = function()
	    -- Configure Kanagawa
	    require('kanagawa').setup({
            compile = false,
            undercurl = true,
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = true,
            dimInactive = false,
            terminalColors = true,
            
            -- Set the base theme to Dragon
            theme = "dragon",
            background = {
                dark = "dragon",
                light = "lotus"
            },

            -- Use 'overrides' to safely access the palette and force vivid colors
            overrides = function(colors)
                local theme = colors.theme
                local p = colors.palette

                return {
                    -- 1. FORCE VIVID COLORS FOR SYNTAX
                    -- These keys (String, Statement, etc.) match standard Neovim syntax groups
                    
                    String = { fg = p.springGreen, bold = true },  -- Bright Green
                    
                    Statement = { fg = p.oniViolet, bold = true }, -- Pink/Violet (if, else, return)
                    Keyword = { fg = p.oniViolet, italic = true }, -- Same as Statement
                    
                    Function = { fg = p.crystalBlue, bold = true },-- Bright Blue
                    Identifier = { fg = p.crystalBlue },           -- Variables/Names
                    
                    Number = { fg = p.surimiOrange, bold = true }, -- Bright Orange
                    Boolean = { fg = p.surimiOrange, bold = true },
                    Constant = { fg = p.surimiOrange, bold = true },

                    Type = { fg = p.waveAqua1, bold = true },      -- Cyan/Aqua for types
                    Operator = { fg = p.boatYellow2 },             -- Bright Yellow for = + - *

                    -- 2. OPTIONAL UI TWEAKS
                    -- Remove background from floating windows (for transparency)
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    FloatTitle = { bg = "none" },

                    -- Save the gutter background removal
                    SignColumn = { bg = "none" },
                }
            end,
        })
         vim.cmd.colorscheme "kanagawa"
	end
    },
}
