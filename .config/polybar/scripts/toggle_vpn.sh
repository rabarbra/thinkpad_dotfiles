state=`systemctl is-active openvpn-client@$2`
case $1 in
    state)
        if [[ $state == "active" ]]
        then
            echo '#eaeaea'
        else
            echo "#9c9c9c"
        fi
        ;;
    toggle)
        if [[ $state == "active" ]]
        then
            systemctl stop openvpn-client@$2
        else
            systemctl start openvpn-client@$2
        fi
        ;;
esac
