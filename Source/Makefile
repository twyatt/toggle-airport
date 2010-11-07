zip:
	test -d toggle-airport/ || mkdir toggle-airport
	cp Makefile toggle-airport/
	cp com.mine.toggleairport.plist toggle-airport/
	cp toggleAirport.sh toggle-airport/
	zip -r -9 toggle-airport.zip toggle-airport/

clean:
	rm toggle-airport/Makefile
	rm toggle-airport/com.mine.toggleairport.plist
	rm toggle-airport/toggleAirport.sh
	rmdir toggle-airport/

install:
	test -d /Library/Scripts || mkdir -p /Library/Scripts
	test -d /System/Library/LaunchAgents || mkdir /System/Library/LaunchAgents

	install -m 0755 toggleAirport.sh /Library/Scripts
	install -m 0755 com.mine.toggleairport.plist /System/Library/LaunchAgents

uninstall:
	rm /Library/Scripts/toggleAirport.sh
	rm /System/Library/LaunchAgents/com.mine.toggleairport.plist
