#!/bin/sh

# git config

echo "git config"

git config --global user.name "Olaf Alders"
git config --global user.email "olaf@wundersolutions.com"

git config --global color.ui true
git config --global branch.master.remote origin
git config --global branch.master.merge refs/heads/master
git config --global push.default matching

git config --global alias.ba 'branch -a'
git config --global alias.co 'checkout'
git config --global alias.s 'status'
git config --global alias.changes 'diff --name-status -r'
git config --global alias.diffstat 'diff --stat -r'

# takes person's name or email address as sole arg
git config --global alias.whois "!sh -c 'git log -i -1 --pretty=\"format:%an <%ae>\n\" --author=\"$1\"' -"

# takes a commit name as sole arg
git config --global alias.whatis "show -s --pretty='tformat:%h (%s, %ad)' --date=short"
