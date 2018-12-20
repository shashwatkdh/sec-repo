README.md:
	touch README.md
	echo "# Peergraded Assignment" >>README.md
	echo '$(date)' >>README.md
	echo "$(wc -l ~/guessinggame.sh)" >>README.md

