#! /bin/sh -

sudo chown -R $(whoami) /opt/

apt-get install -y emacs

git clone https://github.com/AlbaroPereyra/emacsconf;
# mkdir if it does not exist
mkdir -p ~/.emacs.d/;
touch ~/.emacs.d/.emacs-custom.el;
mv emacsconf/init.el ~/.emacs.d/;
rm -rf emacsconf;
