### Add alias to avoid the defalt params
into ~/.zshrc

```
  alias gvalac="valac --pkg gtk+-3.0"
```

### build the Application

```
  gvalac src/Application.vala -o bin/Application
```

### To include the translations

1. Run meson build as regular
```
meson build --prefix=/usr
cd build/
ninja 
```

2. add new language requirementes into root meson build, the go to build

```
ninja com.github.yourusername.yourrepositoryname-pot
```

## Update Icons 

```
sudo update-icon-caches /usr/share/icons/*
```

### Run flatpack

```
flatpak-builder build com.github.yourusername.yourrepositoryname.yml --user --install --force-clean
```

If library or sdk version is not found , you could run this command to installed
```
flatpak install io.elementary.Platform

```
