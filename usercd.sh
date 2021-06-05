# Create a shell script to manage user (create, delete)
# Add both the ansible playbooks into this shell-script
# to run after this shell-script is executed

# if user selects 1 then ucreate.yml will play
# if user selects 2 then udelete.yml will play

# u.yml is a value file for the ansible playbooks


echo -e "Username: \c"
read name

echo "make_user: $name" > u.yml

sleep 1

echo "Choose your choice: 1. create 2. delete"
read num

sleep 1

case $num in
	1)	ansible-playbook ucreate.yml
	;;
        2)	ansible-playbook udelete.yml
	;;
esac
