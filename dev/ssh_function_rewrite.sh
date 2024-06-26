# bash function that adds new argument to ssh called 'holberton'
# must add this to bash .profile (or .bashrc) config file
# after edits run $ source ~/.bashrc

ssh() {
    if [[ "$@" == "holberton" ]]; then
	echo "   .. Which Server?? .."
	echo ""
	echo "(1) 123-web-01 = 100.25.34.244"
	echo "(2) 123-web-02 = 54.164.83.23"
	echo "(3) 123-lb-01 = 100.26.226.134"
	echo " EXIT: any other number to quit"
	echo ""
	read -p "Please Enter the # for the server: " -n 1 -r IPADDRESS
	echo ""
	echo "... please wait"
	if [[ "$IPADDRESS" == 1 ]]; then
	    command ssh ubuntu@100.25.34.244 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 2 ]]; then
	    command ssh ubuntu@54.164.83.23 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 3 ]]; then
	    command ssh ubuntu@100.25.34.244 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 4 ]]; then
	    echo ""
	    read -p "what is the port #? " port
	    command ssh root@100.26.226.134 -p "$port"
	else
	    echo ""
	    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
	fi
    else
	command ssh "$@"
    fi
}
