#! /usr/bin/bash

#Variables
usr=`whoami`

# Directories Setup
mkdir workspace
cd workspace/
mkdir docs logs data scripts
touch test1 test2

# Files Manipulations
cd docs/
touch doc1 doc2
# Replaced nano with echo for input
echo "This
is
the
first
document
1
2
3
4
5
6
7
8
9" > doc1
echo "This
is
the
second
document
9
8
7
6
5
4
3
2
1" > doc2
echo "Welcome to Linux commands!" > welcome
cat welcome doc1 doc2 > summary
head summary
tail summary
grep -i "th" summary > ../logs/search_results
cd ..
cp test1 docs
mv test2 docs
mv test1 data

# Permissions and Ownerships
chmod 764 scripts/
sudo groupadd group1
sudo chown $usr:group1 data/

# Networking
df -h
du
ifconfig
ping -c 5 google.com



