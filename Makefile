SM = /usr/sbin/smartctl
ifeq ($(shell test -e $(SM) && echo -n yes), yes)
	REQMET = ok
else
	REQMET = false
endif

install:
ifeq ($(REQMET), ok)
	install -o root -g root TempLogger /usr/sbin
	install -o root -g root TempLogger.service /usr/lib/systemd/system
	systemctl enable TempLogger.service
	systemctl start TempLogger.service
else
	@echo TempLogger requires smartctl. Please install smartmontools!
endif

