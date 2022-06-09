# Kreative - A Neovim colorscheme backend
Kreative is a colorscheme backend that manages all of the complicated theming and color manipulation for you. All you need to provide is a set of colors, Kreative will do the rest.

Features:
- light and dark themes created for you
- create files in `/color` to be able to load your colors using built in methods
- create prerendered color files when you're done

# Why Kreative and not Lush?
[Lush](https://github.com/rktjmp/lush.nvim) is a very similar plugin for Neovim as well. It has a lot of features, such as live updates and a multitude of export options. It is certainly a plugin worth exploring, but the following is a list of reasons why I think one should use Lush and why one should not:

## Why Lush?
- Very extensible, allowing a lot of flexibility with the starting and end project. It is very much a framework to release a colorscheme
- MIT license. Kreative is licensed under GPLv3, which will mean that yours is as well, so if you need license flexibility, Lush is perfect
- Live updates for groups, can see what each color does as it changes
- Vimscript output, for regular Vim support

## Why not Lush?
- Kreative is meant to be as simple as possible, you should have to touch code as little as possible. Just put in colors and generate
- Easy terminal and dark, light, and contrast control from one set of colors
- Uh, it's not written in Fennel? Lisp is cool still I promise
- You think I'm cooler

I'll be honest, I mostly wrote this for me as I like changing up colorschemes a lot but loathe making new colorschemes. Pywal was what got me into it, but I want to keep the GUI colorscheme spirit alive, and I hope that you at least try this out.

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

Macros shipped in `lua/katdotnvim/katcros-fnl` is provided under the GPL v3 license. [See](https://github.com/katawful/katcros-fnl).
