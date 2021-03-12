#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install the tg_wp_install plugin into cPanel
# AUTHOR: Peter Elsner <peter.elsner@cpanel.net>
#
clear
echo "Installing CPanel Test Plugin"

# Create the directory for the plugin
mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/tg_wp_install

# Get the plugin files from Github
curl -s https://raw.githubusercontent.com/patilvikasj/cPanelTest/master/tg-wp-installer.tar.gz > /root/tg-wp-installer.tar.gz

# Uncompress the archive
tar xzf tg-wp-installer.tar.gz

# Move files to /usr/local/cpanel/base/frontend/paper_lantern/tg_wp_install directory
mv /root/index.php /usr/local/cpanel/base/frontend/paper_lantern/tg_wp_install
mv /root/tg-wp-installer.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/tg_wp_install

# Install the plugin (which also places the png image in the proper location)
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/tg_wp_install/tg_wp_install.tar.gz

echo "Installation is complete!"