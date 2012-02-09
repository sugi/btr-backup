PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin

# Backup
#2 3 */2 * *	root	ionice -c 3 /usr/sbin/btr-backup /root
#6 3 */2 * *	root	ionice -c 3 /usr/sbin/btr-backup /boot
#10 3 */2 * *	root	ionice -c 3 /usr/sbin/btr-backup /usr/local
#46 3 * * *	root	ionice -c 3 /usr/sbin/btr-backup /var --exclude "/cache/apt/*" --exclude "/tmp/*" --exclude "/log/*" --exclude "/spool/squid*/*"
#19 4 * * *	root	ionice -c 3 /usr/sbin/btr-backup /etc
#5 5 * * *	root	ionice -c 3 /usr/sbin/btr-backup /home

# Backup cleanup
#7 7 * * *	root	/usr/sbin/btr-backup-clean /backup/*/*
