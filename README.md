# Manjaro (Gnome)
![Minion](https://manjaro.org/img/logo.svg)
## A post-installation configuration

---

### Settings
+ **Background**
	- Background image `Mountains`
+ **Sound**
	- Alert sound = `drip`
+ **Power**
	- Screen blank = `15min`
+ **Keyboard**
	- Add language = `Portuguese (Brazil)`
	- Set order = `first`
	+ **Shortcuts**
		+ **Navigation**
			- hide all normal windows = `shift + alt + D`
		+ **Screenshots**
			- Copy a screenshot of an area to the clipboard = `shift + super + S`
		+ **Sound and media**
			- mic mute/unmute = `alt + M`
			- next track = `alt + L`
			- play/pause = `alt + K`
			- previous track = `alt + J`
			- volume down = `alt + I`
			- volume up = `alt + O`
			- mute/unmute = `alt + P`
		+ **Custom shortcuts**
			- gnome-terminal = `ctrl + alt + T`
+ **Accessibility**
	- Sound keys = `true`
	- Visual alerts = `true` (flash the entire window)
+ **Users**
	- Set profile picture
	- Sets user password
+ **Date & time**
	- Automatic date e time = `true`
---

### Right click hover menu
+ Position and size
	- Icon size limit = `32px`
+ Launchers
	- Show trashcan = `true`
+ Appearance
	- Use built-in theme = `false`
	- Customize windows counter indicators = `metro`
		- Enable unity7 = `true`
		- Use dominant color = `true`

---

### Tweaks
+ Appearance
	- Applications = `matcha-dark-azul`


### Extensions
```
application menu = true
desktop icons = true
workspace indicator = true
```

### Desktop icon settings
```
size = tiny
show external drives = false
show hidden files = false
```

---

### Generate SSH-key
```bash
# gen key
ssh-keygen -t ed25519 -C "your_github_email@example.com"
[enter] (save to default file)
...enter your password
...enter your password again

clear

# add key to github
cat ~/.ssh/id_ed25519.pub
# copy the key to clipboard
```
###### Go to your Github account settings
<img src="https://docs.github.com/assets/cb-34573/images/help/settings/userbar-account-settings.png" height="400"/>

###### Click `New SSH key` button
<img src="https://docs.github.com/assets/cb-11964/images/help/settings/ssh-add-ssh-key.png" height="150"/>

###### Paste clipboard content to text area (WITHOUT the email in the end)
<img src="https://docs.github.com/assets/cb-24835/images/help/settings/ssh-key-paste.png"/>


---

### Terminal
+ Profile (`manjaro`)
	+ Text
		- cursor shape = `block`
		- cursor blinking = `true`
	+ Palette
		- Built-in scheme = `solarized`
		- change shit green to nice green

``` bash
# update packages
sudo pacman -Syu
# install vlc and video drivers
sudo pacman -Sy vlc
# install atom text-editor
sudo pacman -Sy atom
# install neofetch (system info)
sudo pacman -Sy neofetch
# directory view in tree-style
sudo pacman -Sy tree
# output coloring
sudo pacman -Sy lolcat
```

### Modifing directories
```bash
# move to root
cd ~
# create folder on root directory
mkdir Github
# clone repo containing config files
git clone git@github.com:DouglasKosvoski/Manjaro-Gnome.git
# enter folder
cd Manjaro-Gnome
# copy config files to root directory
cp *. ../
# nano text highlighting
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

```
