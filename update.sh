#!/bin/sh
dig +short @localhost hacker.evil.zz
echo "server 127.0.0.1" > /tmp/nsupdate.txt
echo "update delete hacker.evil.zz" >> /tmp/nsupdate.txt
echo "send" >> /tmp/nsupdate.txt
echo "update add hacker.evil.zz 86400 A 192.168.2.0" >> /tmp/nsupdate.txt
echo "send" >> /tmp/nsupdate.txt
nsupdate /tmp/nsupdate.txt
dig +short @localhost hacker.evil.zz
