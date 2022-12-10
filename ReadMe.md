# Kreative - A Neovim colorscheme backend

Kreative is a colorscheme backend that manages all of the complicated theming and color manipulation for you. All you need to provide is a set of colors, Kreative will do the rest.

Features:
- Light and dark themes created for you, switch with `vim.o.background`
- Soft and hard contrast choices to choose from
- Create files in `/color` to be able to load your colors using built in methods
- Create prerendered color files on the fly, disabled by default
- Create prerendered color files on demand

# Why Kreative and not Lush?
[Lush](https://github.com/rktjmp/lush.nvim) is a very similar plugin for Neovim as well. It has a lot of features, such as live updates and a multitude of export options. It is certainly a plugin worth exploring, but the following is a list of reasons why I think one should use Lush and why one should not:

## Why Lush?
- Very extensible, allowing a lot of flexibility with the starting and end project. It is very much a framework to release a colorscheme
- MIT license. Kreative is licensed under GPLv3, which will mean that yours is as well, so if you need license flexibility, Lush is perfect
- Live updates for groups, can see what each color does as it changes
- Management of group colors
- Vimscript output, for regular Vim support

## Why not Lush?
- Kreative is meant to be as simple as possible, you should have to touch code as little as possible. Just put in colors and generate
- Easy terminal and dark, light, and contrast control from one set of colors
- Uh, it's not written in Fennel? Lisp is cool still I promise
- You think I'm cooler

I'll be honest, I mostly wrote this for me as I like changing up colorschemes a lot but loathe making new colorschemes. Pywal was what got me into it, but I want to keep the GUI colorscheme spirit alive, and I hope that you at least try this out.

# Supported Plugins
| Plugin | Option Name |
| --- | --- |
| [Native LSP](https://github.com/neovim/nvim-lspconfig) | 'lsp' |
| [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) | 'treesitter' |
| [Startify](https://github.com/mhinz/vim-startify) | 'startify' |
| [TS Rainbow](https://github.com/p00f/nvim-ts-rainbow) | 'ts_rainbow' |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | 'indent_blankline' |
| [coc.nvim](https://github.com/neoclide/coc.nvim) | 'coc' |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | 'cmp' |
| [bufferline](https://github.com/akinsho/bufferline.nvim) | Note: not enabled by default 'bufferline' |
| [lightline](https://github.com/itchyny/lightline.vim) | Use plugin settings: 'kreative' |
| [Airline](https://github.com/vim-airline/vim-airline) | Use plugin settings: 'kreative' |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim) | Use plugin settings: 'kreative' |
| [Fugitive](https://github.com/tpope/vim-fugitive) | 'fugitive' |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim/) | 'gitsigns' |

# Creating your colorscheme
Creating your colorscheme is very simple, I will be using Lua for this example. Inside a valid `/color` directory, i.e. inside your Neovim config directory, create a file named after what you wish to call this. As to not overload anything, and to keep interfacing with Neovim as vanilla as possible, if you desire to have both hard and soft contrasts for the same set of colors, name your file something to reflect this. Going forward, this file name is now your colorscheme's name.

Creating a file called `test.lua`:

```lua

local colors = {
	dark = "#282828",
	red = "#cc241d",
	green = "#98971a",
  orange = "#d79921",
	blue = "#458588",
	purple = "#b16286",
	pink = "#689d6a",
	light = "#ebdbb2",
}

-- Required opts table
local opts = {
        contrast = "soft",
        colors_name = "test",
        integrations = {
                "treesitter",
                "lsp",
                "ts_rainbow",
                "indent_blankline",
                "startify",
                "coc",
                "cmp",
                "fugitive",
                "gitsigns",
        },
        filetypes = {
                "vim",
                "vimwiki",
                "markdown",
        },
        comment_style = {"italic"},
        render = true,
}

require("kreative.color")["init-colors"](colors)
require("kreative.main").init(opts)
```

There's a few components here, so let's go through them one by one.

## `colors`
This is a table that contains 8 colors to be used for your colorscheme. The actual keys for the eight colors can vary:

| Key | Alternates |
| --- | ---------- |
| `dark` | `color_0` |
| `red` | `color_1` |
| `green` | `color_2` |
| `orange` | `yellow`, `color_3` |
| `blue` | `color_4` |
| `pink` | `auxiliary`, `color_5` |
| `purple` | `color_6` |
| `light` | `color_7` |

These only accept hex colors, and all values must be placed. For the dark and light colors, these are intended to be the foreground and background from most colorschemes. Kreative will create the shades needed for you.

## `opts`
There are 2 required options for this table, `contrast` and `colors_name`. Contrast can be either `soft` or `hard`, the color name should be the same as your file name.

The rest of the options are optional, and simply present the defaults. For `integrations`, 'bufferline' is also supported if one uses it.

### `comment_style`
This takes a sequential table of [attr-list](https://neovim.io/doc/user/syntax.html#%3Ahighlight) attributes to apply to comments.
The only groups that Kreative uses are 'Comment' and 'SpecialComment', '@comment' links to 'Comment'.

### `render`
When set to `true`, this will render your colors and highlight files to JSON upon a change to your colors table or if said rendering never happened.
See [Colors](#color-rendering) section for more details.

## Function Calls
There are 2 important function calls needed. The first is `require("kreative.color")["init-colors"](colors)`. This initializes Kreative with the colors you have picked.
The second, `require("kreative.main").init(opts)` starts the colorscheme itself. Both functions should be passed their respective tables.

## Plugins with Custom Color Options
For plugins that need to be passed a custom colorscheme name, such as Lualine, use "kreative" as the string to use the colors from this theme.

# Generation
## Terminal
Currently, you can only generate terminal themes for your desired terminal:
```vim
:KreativeGenTermTheme terminal
```
You can generate both light and dark colors for your theme by passing 'all' as the second argument:
```vim
:KreativeGenTermTheme terminal all
```
Completion is supported as well.

The following are supported currently:
| Terminal | Setting |
|---|---|
| kitty | "kitty" |
| alacritty | "alacritty" |
| URxvt | "rxvt-unicode", "urxvt" |
| konsole | "konsole" |

An appropriate file will be made at your current working directory using your background settings. Only a theme made through Kreative can generate a terminal theme, any other theme will present an error.

## Color Rendering
To render your colors to file on demand use the user function `KreativeRenderColor`.
This will render all colors, from the main color file to your `stdpath('data')` path under `/kat/kreative/json/`.
For Linux for example, this would be: `/home/user/.local/share/nvim/kat/kreative/json/`.

You can autogenerate the color files upon changes to your colorscheme file with the option `render` inside your 'opts' table. This will only render upon a change or missing color files, leading to seamless usage.

# License
My code in this project is licensed under GPLv3. There are external projects not under the GPLv3 license distributed with this repository, but a different compatible license.

* `lua/externals/hsluv.lua` & `fnl/externals/hsluv.lua`
* Aniseed - distributed in `lua/kreative/aniseed`

hsluv is provided as free to use, being able to be integrated into this project provided it's copyright statement is kept in place. For convenience it is placed below as well:
```
Lua implementation of HSLuv and HPLuv color spaces
Homepage: http://www.hsluv.org/
Copyright (C) 2019 Alexei Boronine
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
Aniseed is provided into the public domain, and free to use for integration under the [Unlicense](https://unlicense.org/) license. [See](https://github.com/Olical/aniseed) the full project for full licensing details.

Macros shipped in `lua/kreative/katcros-fnl` is provided under the GPL v3 license. [See](https://github.com/katawful/katcros-fnl).
