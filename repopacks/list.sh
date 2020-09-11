echo "please enter repo to see pkg's"
read repo_name
echo "$repo_name packages..."
echo "$repo_name_Packages"
grep Package /var/lib/apt/lists/$repo_name