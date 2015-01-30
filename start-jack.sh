#!/bin/sh
/usr/bin/jackd --realtime -t 1000 -d alsa -d hw:0,3 -p 128 -n 2
