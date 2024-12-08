#
# Regular cron jobs for the devops-lab3 package
#
0 4	* * *	root	[ -x /usr/bin/devops-lab3_maintenance ] && /usr/bin/devops-lab3_maintenance
