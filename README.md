## Personal i3wm config files

### Screenshots

![Clean shot, no windows](https://raw.github.com/nightsh/i3config/master/shots/i3-wm1.png)[ Clean shot, no windows ]
![Some terminals open, nothing unusual](https://raw.github.com/nightsh/i3config/master/shots/i3-wm2.png)[ Some terminals open, nothing unusual ]
![GVim running](https://raw.github.com/nightsh/i3config/master/shots/i3-wm3.png)[ GVim running ]
![Vim running in gnome-terminal](https://raw.github.com/nightsh/i3config/master/shots/i3-wm4.png)[ Vim running in gnome-terminal ]


### Requirements

Fonts:

* Droid Sans Mono

Software:

* i3 (dohh)
* dmenu
* conky
* nitrogen (optional, for easily changing wallpapers)
* i3lock (optional)


### Other stuff I use within i3

Keyboard shortcuts:

* `$mod+Shift+Return` launches `gvim`
* `$mod+Shift+F1` launches `icedove`
* `$mod+Shift+F2` launches `dwb`, an excellent lightweight, vimified Webkit browser
* `$mod+Shift+F3` launches `iceweasel`, which is the Debian version of Firefox
* `$mod+Shift+p` shows a quick htop via `gnome-terminal -e htop`
* `Print` for taking screenshots via `ksnapshot` (customize as you wish)
* `$mod+Print` calls a dirty hack for locking the screen (a custom `xflock4`)
* `$mod+Shift+F5` calls a custom script named `camshot` (included)
* `$mod+Shift+Delete` calls a custom script named `toggle_touchpad` (included)
* `XF86AudioRaiseVolume` calls `volnoti-handle.sh up` (included)


### The custom scripts

First, find them in the `scripts/` directory. Then symlink them to `/usr/bin/`
or `/usr/local/bin/` or in whatever is in your `$PATH` variable. Take a look at
it in your terminal: `$ echo $PATH`.

    ln -s $HOME/.i3/scripts/toggle_touchpad /usr/local/bin/toggle_touchpad

* `toggle_touchpad` is a small script that uses `synclient` to toggle the
  touchpad state on and off
* `camshot` uses `fswebcam` to take a quick picture with your webcam and save
  it (useful in various situations)
* `volnoti-handle.sh` is a `volnoti` wrapper to quickly adjust the volume with
  lightweight dependencies. Since I rely on Kmix for some time now, I disabled
  it, but it's still a great option for the resource freaks.
* my version of `xflock4` is a hack, since I use the power manager from Xfce
  and it relies in xflock to lock the screen. I simply uninstalled the thing
  and replaced it with a custom made i3lock wrapper (check the source). Then
  again, adjust as you wish, maybe fork and improve it since it's just a
  hackish prototype for now. The i3lock wrapper wasn't my idea, but I can't
  remember who I should credit for it :-(


### The startup stuff

* NetworkManager, via `nm-applet` - can't live with it, can't live without
  it...
* `nitrogen`, because I like the easy wallpaper switching and multi-head
  options
* (optional, disabled) background setting via `feh`, using a custom NG PotD
  scraper [available via GitHub](https://github.com:nightsh/natgeo-wallpaper).
  The scraper is called via cron, downloads the image and forces a symlink for
  `feh` to grab and set as wallpaper.
* Kmix (only suitable for people with heavy KDE deps installed too)
* Redshift, which does wonders for the eyes at night
* Xfce power manager daemon, lightweight and efficient


### License

Copyright © 2014 Victor Nițu <victor@debian.org.ro>
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
