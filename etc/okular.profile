# KDE okular profile
noblacklist ~/.kde/share/apps/okular
noblacklist ~/.kde/share/config/okularrc
noblacklist ~/.kde/share/config/okularpartrc
read-only   ~/.kde/share/config/kdeglobals
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
nogroups
nonewprivs
noroot
protocol unix
seccomp
nosound

private-dev

#Experimental:
#net none
#shell none
#private-bin okular,kbuildsycoca4,kbuildsycoca5
#private-etc X11
