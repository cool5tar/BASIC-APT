apt update
rm repos.list
grep -h ^deb /etc/apt/sources.list /etc/apt/sources.list.d/* >> repos.list
cat repos.list
