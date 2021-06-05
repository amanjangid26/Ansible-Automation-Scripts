# create a shell script & ansible playbook in such a way
# that if vsftpd.conf is entered into file.yml then only 
# copy the file to w2.rst.com
# If we entered some other file such as vsftpd.err, then 
# since we had mentioned a conditional loop of (when) module,
# so it will not copy the file vsftpd.err to the destination.



echo -e "Enter the file name: \c"
read fname

echo "filename: $fname" > file.yml

sleep 2

ansible-playbook task9.yml
