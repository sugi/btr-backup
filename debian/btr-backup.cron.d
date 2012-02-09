PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin
BTR_BACKUP=ionice -c 3 /usr/sbin/btr-backup

# Backup
#2 3 */2 * *	root	$BTR_BACKUP /root
#6 3 */2 * *	root	$BTR_BACKUP /boot
#10 3 */2 * *	root	$BTR_BACKUP /usr/local
#46 3 * * *	root	$BTR_BACKUP /var --exclude "/cache/apt/*" --exclude "/tmp/*" --exclude "/log/*" --exclude "/spool/squid*/*"
#19 4 * * *	root	$BTR_BACKUP /etc
#5 5 * * *	root	$BTR_BACKUP /home

# Backup cleanup
#7 7 * * *	root	/usr/sbin/btr-backup-clean /backup/*/*
