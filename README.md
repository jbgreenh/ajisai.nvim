# ajisai.nvim

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

## colors

| color | hex | usage |
|-------|-----|-------|
| ![#0e0e16](https://placehold.co/15x15/0e0e16/0e0e16.png) dark navy | `#0e0e16` | background |
| ![#d8d8d8](https://placehold.co/15x15/d8d8d8/d8d8d8.png) light grey | `#d8d8d8` | base text |
| ![#8ac490](https://placehold.co/15x15/8ac490/8ac490.png) soft green | `#8ac490` | comments |
| ![#858d95](https://placehold.co/15x15/858d95/858d95.png) muted slate | `#858d95` | keywords |
| ![#b0c0e0](https://placehold.co/15x15/b0c0e0/b0c0e0.png) pale blue | `#b0c0e0` | functions |
| ![#70a8a8](https://placehold.co/15x15/70a8a8/70a8a8.png) muted cyan | `#70a8a8` | types |
| ![#d58ca6](https://placehold.co/15x15/d58ca6/d58ca6.png) rosy pink | `#d58ca6` | strings |
| ![#ef8a90](https://placehold.co/15x15/ef8a90/ef8a90.png) bright red | `#ef8a90` | constants, errors |

## credits

this scheme is based on [lake-dweller.nvim](https://github.com/yonatanperel/lake-dweller.nvim) and uses adjusted base highlight groups, highlight linking, and plugin integrations from `lake-dweller`
see `LAKE-DWELLER-LICENSE`
