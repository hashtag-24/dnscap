#!/bin/sh -xe

../dnscap -r dns6.pcap-dist -6 -g 2>test10.out
../dnscap -r dns6.pcap-dist -6 -o use_layers=yes -g 2>>test10.out

diff test10.out "$srcdir/test10.gold"
