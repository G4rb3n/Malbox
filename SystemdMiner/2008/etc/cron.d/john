#
# Start john everyday at the same to try to crack the passwords. The
# second line will then later stop the process so that it doesn't
# consume system resources that are needed otherwise. You are
# encouraged to change the times.
#
# Also notice that John is 'nice'd, if you don't like this (you 
# believe that your system can run fine with john doing its work)
# just remove the 'nice' call
#
# JOHN_OPTIONS = foo bar (man 5 crontab)
#
#00 1	* * *	root	[ -x /usr/share/john/cronjob ] && nice /usr/share/john/cronjob start
#00 7	* * *	root	[ -x /usr/share/john/cronjob ] && /usr/share/john/cronjob stop
