This repository contains the initialization file and other resources used by kjmitch to customize and extend Emacs. It can be found at https://github.com/kjmitch/.emacs.d

Software needed in order to take advantage of this repository includes Git and some flavor of Emacs; of course the most recent version of each is preferable.

This repository will create a folder named .emacs.d, so cloning should be done in the home directory ~/ (often C:\Users\<user>\AppData\Roaming or C:\Users\<user> under modern Windows, but ~/ works in Emacs and PowerShell under modern Windows, as well). If cloned elsewhere and not moved to the home directory, the load-path variables used by Emacs will need to be adjusted accordingly.

From a prompt inside this folder, run the following commands to download the latest versions of the packages that this init depends on:

git clone git://orgmode.org/org-mode.git
git clone git://github.com/sellout/emacs-color-theme-solarized.git

There may be others in this list at a later date. The packages themselves aren't added to this repository as such duplication is both excessive and unnecessary, and might prevent the inclusion of up-to-date versions of those packages. Note: I'm looking for a way to have such pull requests run by the init.el file itself upon starting Emacs or at an interval, but I haven't found anything yet.

Direct any questions, comments, or suggestions to kjmitch@gmail.com