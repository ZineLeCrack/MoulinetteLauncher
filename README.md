# Moulinette Launcher

## How to setup ?

### Linux
```
cd ~
git clone https://github.com/ZineLeCrack/MoulinetteLauncher/
```

## How to launch ?

You have to be in a project repository named C## or SHELL##

Next, execute this :
```
bash ~/MoulinetteLauncher/main.sh
```

### Or

Launch:
```
python3 ~/MoulinetteLauncher/interface.py
```

## Alias to launch faster

### bash
```
echo "alias ml='bash ~/MoulinetteLauncher/main.sh'" >> ~/.bashrc
echo "alias mli='python3 ~/MoulinetteLauncher/interface.py'" >> ~/.bashrc
source ~/.bashrc
```
### zsh
```
echo "alias ml='bash ~/MoulinetteLauncher/main.sh'" >> ~/.zshrc
echo "alias mli='python3 ~/MoulinetteLauncher/interface.py'" >> ~/.zshrc
source ~/.zshrc
```
Then launch :
```
ml
mli
```
