#!/bin/bash

ovs-ctl stop; rm /usr/local/etc/openvswitch/conf.db; ovs-ctl start;
sleep 1
ifconfig wlx004f81048a95 down
iwconfig wlx004f81048a95 mode monitor
ifconfig wlx004f81048a95 up
sleep 1
ovs-vsctl add-br mybridge
ifconfig mybridge up
sleep 1
ovs-vsctl add-port mybridge wlx004f81048a95

