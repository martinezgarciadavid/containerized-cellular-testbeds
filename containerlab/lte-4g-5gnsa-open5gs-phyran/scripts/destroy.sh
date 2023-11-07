#!/bin/bash

# MIT License
# 
# Copyright (c) 2023 Networking and Virtualization Research Group (GIROS DIT-UPM).
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

echo 'Containerlab scenario with Open5GS EPC for LTE, 4G and 5G Non-Standalone (NSA) with physical RAN'

echo ''
echo ''

echo 'Destroying scenario...'

echo ''
echo ''

echo '1.- Destroying Open5GS EPC topology...'

sudo containerlab destroy --topo ../topologies/open5gs-epc.yaml
sudo rm -Rf clab-open5gs-epc/
sudo rm ../topologies/.open5gs-epc.yaml.bak

echo 'Done.'

echo ''
echo ''

echo '2.- Deleting Open vSwitch bridges...'

sudo ovs-vsctl del-br br-s1
sudo ovs-vsctl del-br br-db

echo 'Done.'

echo ''
echo ''

echo 'All done. Scenario fully destroyed.'
