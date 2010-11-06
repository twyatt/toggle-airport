install:
	test -d /Library/Scripts || mkdir -p /Library/Scripts
	test -d /System/Library/LaunchAgents || mkdir /System/Library/LaunchAgents

	install -m 0755 toggleAirport.sh /Library/Scripts
	install -m 0755 com.mine.toggleairport.plist /System/Library/LaunchAgents

uninstall:
	rm /Library/Scripts/toggleAirport.sh
	rm /System/Library/LaunchAgents/com.mine.toggleairport.plist
