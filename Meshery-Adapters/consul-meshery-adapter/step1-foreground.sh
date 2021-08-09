#!/bin/bash
while [ ! -f /root/shell.sh ]; do
    sleep 1s
done
/root/shell.sh
