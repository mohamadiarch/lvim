
## install dependencies in windows
Have git, make, pip, python, npm, node and cargo and PowerShell 7+  installed on your system.
1. install neovim
2. install git, python and nodejs: npm install -g yarn
3. install rust and cargo : wsl: curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
4. install Chocolatey
5. choco install make : you should open it as admin
6. install lunarvim from your fork: see below
7. install mingw: choco install mingw  or https://github.com/niXman/mingw-builds-binaries/releases
8. then you can clone your git
9. install nerdfonts: Fira, Hack. Also set the fonts in terminal
10. choco install fd ==> find files in first page: https://github.com/sharkdp/fd
11. choco install glow ==> markdown privew: https://github.com/charmbracelet/glow
12. choco instll sed ==> nvim-spectre
13. choco install ripgrep ==> nvim-spectre
14. choco install zig ===> treesitter compiler
14. add chrome to path
16. Install linters with :Mason
15. clone repos and change path of docs
16. `Set-Alias lvim -Value "C:\Users\moham\AppData\Roaming\lunarvim\lvim\utils\bin\lvim.ps1"` ===> if you want to set another alias




## MVP
wt.exe -d .


## FORK Windows
1. create a folder in path: C:\Users\mohammadi\AppData\Roaming\lunarvim
2. git clone https://github.com/mohamadiarch/lunarvim.git
3. run `install.ps1` in powershell 7 for installing dependencies
4. if dependencies is installed run lunarvim in path `utils\bin\lvim.ps1`

-----------------------------------------------------------------------------------------

## Persian Support
there is no need to `set arabic` or `set keymap=arabic`
: set termbidi
: set encoding? ===> check what is encoding in vim
set nerdfont in both terminal and vim even your browser ==> vim.opt.guifont = "Fira Nerd Font Mono"

#### windows

#### Linux

----------------------------------------------------------------------------------------

## issuse
1. live preview for html and markdown
2. custome snippets of others
3. file preview like pdf and img
4. folding
5. devdocs
6. ctrl+ space not working
7. obsidian-nvim
8. open document from code in chrome

moviing in insertmode===> {("who left")}
