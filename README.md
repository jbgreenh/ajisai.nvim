# 紫陽花

a colorscheme desined for transparent terminals inspired by hydrangeas in the rain

## installation and configuration

```lua
vim.pack.add({ 'https://github.com/jbgreenh/ajisai.nvim' })

require("ajisai").setup({
    variant = "ajisai",        -- only one variant for now
    transparent = true,       -- enable transparent background
    italics = true,            -- enable italic text
    float_background = false,  -- distinct background for floating windows
})

vim.cmd.colorscheme("ajisai")
```

## credits

this scheme is based on [lake-dweller.nvim](https://github.com/yonatanperel/lake-dweller.nvim) and uses adjusted base highlight groups, highlight linking, and plugin integrations from `lake-dweller`
see `LAKE-DWELLER-LICENSE`
