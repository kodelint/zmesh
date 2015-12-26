ohmy_yadr comes with a dead simple plugin manager that just uses vundles and submodules, without any fancy config files.

Add a plugin

    yav -u https://github.com/airblade/vim-rooter

Delete a plugin 

    ydv -u airblade/vim-rooter

The aliases (yav=ohmy_yadr vim-add-plugin), (ydp=ohmy_yadr vim-delete-plugin) and (yuv=ohmy_yadr vim-update-all-plugins) live in the aliases file.
You can then commit the change. It's good to have your own fork of this project to do that.
