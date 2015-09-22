#!/bin/bash

exec /usr/sbin/ntpd -n -u ntp:ntp -p /var/run/ntpd.pid -g
