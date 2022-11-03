for i in "$@"; do
  case "$i" in

  "aXX")

    echo "connection to aXX..."
    echo "with code: $2"
    printf "vpn_username\vpn_1st_password\n$2\ny" | /opt/cisco/anyconnect/bin/vpn -s connect vpn_domain.com
    wait
    remmina -c /home/"user_folder"/"pass_to_remmina"/remmina/connection_config_file.remmina
    ;;

  "iXX_p")

    sshpass -p "password" ssh "user"@"domain" -p "port"
    ;;
  "iXX_t")

    sshpass -p "password" ssh "user"@"domain" -p "port"
    ;;
  "bXX")
    sshpass -p "password" ssh "user"@"domain"
    ;;
  "cXX_p")
    sshpass -p "password" ssh "user"@"domain" -p "port"
    ;;

  "cXX_t")
    sshpass -p "password" ssh "user"@"domain" -p "port"
    ;;

  "aXX_p")
    sshpass -p "password" ssh "user"@"domain"
    ;;
  "aXX_t")
    sshpass -p "password" ssh "user"@"domain"
    ;;
  "dXX")
    sshpass -p "password" ssh "user"@"domain"
    ;;
  "vXX_d")
    /opt/cisco/anyconnect/bin/vpn disconnect
    ;;
  "vXX_s")
    /opt/cisco/anyconnect/bin/vpn status
    ;;

  esac
done
