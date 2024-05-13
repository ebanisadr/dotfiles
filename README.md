# Eric Banisadr's dotfiles

## Setup
1. **Make sure to clone recursively**: `git clone --recursive https://github.com/ebanisadr/dotfiles.git ~/dotfiles`
2. To link the files to `~/`, `cd` into the repository and run:
    `ls -c1 | grep '^[^\.]*$' | xargs -L 1 ./link_file.sh`
3. Fix sqliterc (sqlite won't follow a symbolic link) `rm ~/.sqliterc; ln sqliterc ~/.sqliterc`
4. Install the nerd fonts in `./fonts` to the system font manager.
