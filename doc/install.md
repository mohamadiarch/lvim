
## install dependencies in windows
Have git, make, pip, python, npm, node and cargo and PowerShell 7+  installed on your system.
1. install chocolatey
2. install git, python and nodejs
3. choco install make
4. for install cargo you need to download a compiler to be able to compile Lua (e.g: mingw) and add it to the Path.
5. install mingw: https://github.com/niXman/mingw-builds-binaries/releases
6. then you can clone your git



## Windows
1. create a folder in path: C:\Users\mohammadi\AppData\Roaming\lunarvim
2. git clone https://github.com/mohamadiarch/lunarvim.git
3. run `install.ps1` in powershell 7 for installing dependencies
4. if dependencies is installed run lunarvim in path `utils\bin\lvim.ps1`