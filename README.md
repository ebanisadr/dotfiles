# Eric Banisadr's dotfiles

## Setup

1. **Make sure to clone recursively**
2. To link the files to `~/`, `cd` into the repository and run:
    `ls -c1 | grep '^[^\.]*$' | xargs -L 1 ./link_file.sh`
3. Fix sqliterc (sqlite won't follow a symbolic link) `rm ~/.sqliterc; ln sqliterc ~/.sqliterc`

