amount=5
size="medium"
size_n=1
usage="USAGE: $0 [-s|-m|-l] [-n count]"

while getopts ":smln:" opt; do
	case $opt in
		s ) size="small"
		    size_n=0.8
			;;
		m ) size="medium"
		    size_n=1
			;;
		l ) size="large"
		    size_n=1.6
			;;
		n ) if [[ -n $(echo $OPTARG | grep '^[0-9]*$') ]]; then
                		amount=$OPTARG
                	else
                        	echo "Invaluecount value"
                        	echo $usage
                        	exit 1
                    	fi
                    	;;
	esac
done

echo "================================="
echo "Recept voor $amount $size pizza's"
echo "================================="
echo ""
echo "=== INGREDIENTEN ==="
echo $(echo "$amount * $size_n * 100" | bc) " gram tarwebloem"
echo $(echo "$amount * $size_n * 2" | bc) " gram zout"
echo $(echo "$amount * $size_n * 0.5" | bc) " gram gist"
echo $(echo "$amount * $size_n * 53" | bc) " ml warm water"
echo ""
echo "=== BEREIDING ==="
echo "Doe het zout en tarwebloem in een kom en meng dit."
echo "Meng vervolgens het gist er door en daarna het water"
echo "Kneed het deeg 15 minuten, laat het een paar uur rusten e kneed het weer 15 minuten"
echo "Laat het deeg een nachtje rusten"
echo "Pers de lucht uit het deeg en verdeel het in $amount porties"
echo "Maak de pizzabodems, besmeer ze met tomatensaus, doe er de vulling op"
echo "Doe ze max 15 minuten in de oven op 250C graden."
echo ""
echo "=== ANDER AANTAL ==="
echo "argument -s, -m, -l voor het formaat"
echo "argument -n3, n4, n5, etc... voor aantal"
