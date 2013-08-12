# Synopsis #

The goal is to provide a starting point for Emacs enthusiasts who would like to get going quickly. This setup still expects that the user knows how to open (C-x C-f), save (C-x C-s) and exit (C-x C-c) in Emacs.

These settings provide a familiar 3-pane interface and a more familiar behavior similar to "modern" GUI based Editors/IDE's - a file manager, editor space and a lower space for console output or auxiliary space. The automatic backup and autosave features have been disabled. Wombat has been enabled as the default theme.

  	+----+-----------+
	|    |           |
  	| FM |  Editor   |
  	|    |           |
	|    |           |
  	+----+-----------+
  	| Aux/Cons/Term  |
  	+----------------+

Files accessed via File Manager portion (dirtree) is opened always in the Editor space.

# Installation

Copy the files over to your .emacs.d directory (~/.emacs.d or C:\Users\<username>\Application Data\.emacs.d). Tested under GNU Emacs 24.3 (Mac and Windows)

Edit init.el, change the dirtree calls to directories you consider Project/Workspace directories.

Try it, change it, rock it! Suggest changes on how you made *your* setup more cool. But remember, this is meant as a start, not the end of your Emacs journey.

> "Not all who wander, are lost."

# License #

Licensed under GNU General Public License (original authors listed in the specific files)

Modifications by Sten Feldman (2013 MMXIII)