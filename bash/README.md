# Setup desktop

Basic bash script for setting up a computer.

## Executable

Make scripts executable:
```bash
chmod +x run.sh
```

Do this for every run script inside the runs folder.

## Dry run

Dry run:
```bash
./run.sh --dry
```

## Filtering

Filtering (for example only run neovim):
```bash
./run.sh neovim
```

Filtering with dryrun:
```bash
./run.sh neovim --dry
```
