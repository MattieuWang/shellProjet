infos=$(grep $1 known_hosts)
		array=(${infos/ /})
		user=${array[0]}
		machine=${array[1]}
		passwd=${array[2]}
		ip=${array[3]}
		./login $user $ip $passwd
		clear
		cmd=" "
		until [ "$cmd" == "exit" ]
		do
			read -p "$user@$machine>" cmd
			echo $cmd
		done
