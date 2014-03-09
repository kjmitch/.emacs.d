# kjmitch/.emacs.d

This repository contains the initialization file and other resources used by [kjmitch](https://github.com/kjmitch "My GitHub Page") to customize and extend Emacs. It can be found at [https://github.com/kjmitch/.emacs.d]

### Necessary software
Software needed in order to take advantage of this repository includes [Git](http://git-scm.com/downloads "Git - Downloads") and some flavor of [Emacs](http://ftpmirror.gnu.org/emacs/ "Download mirror site for Emacs"); of course the most recent version of each is preferable.

### Directory locations
This repository will create a folder named `.emacs.d`, so cloning should be done in the home directory, `~/`, (often `C:\Users\<user>\AppData\Roaming` or `C:\Users\<user>` under modern Windows). If cloned elsewhere and not moved to the home directory, the `load-path` variables used by Emacs will need to be adjusted accordingly before Emacs can find the files in this repository.

### Supporting packages
From a prompt inside this folder, run the following commands to download the latest versions of the packages that this init depends on:

* `git clone git://orgmode.org/org-mode.git`
* `git clone git://github.com/sellout/emacs-color-theme-solarized.git`

There may be others in this list at a later date. The packages themselves aren't added to this repository as such duplication is both excessive and unnecessary, and might prevent the inclusion of up-to-date versions of those packages. 

**Author's note:** I'm looking for a way to have such pull requests run from the `init.el` file itself upon starting Emacs or at some regular interval, but I haven't found anything yet.

### Contact
This is my first real Git repository/GitHub publication project, so it's probably rough around the edges. If you've got any questions, comments, or suggestions for me regarding this repository, you can send them to [kjmitch@gmail.com]. Thanks!

~kjm