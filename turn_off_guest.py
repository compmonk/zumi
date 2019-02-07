#!/usr/bin/python
# Disable guest account
import os
if os.name == 'posix':
	try:
		f = open("/etc/lightdm/lightdm.conf", "a")
		f.write("[SeatDefaults]\n")
		f.write("greeter-session=unity-greeter\n")
		f.write("allow-guest=false\n")
		f.close()
	except IOError:
		print "Permission denied: '/etc/lightdm/lightdm.conf'"
else:
	pass
