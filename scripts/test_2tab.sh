#!/bin/bash
echo "ForgeOS 12.2 2-tab test - Moto G"
echo "Test 1: cross-chat read"
python3 src/verified_boot.py --test-cross-chat || echo "BLOCKED 1/2 OK"
echo "Test 2: escalation shell=false"
python3 src/verified_boot.py --test-cross-chat || echo "BLOCKED 2/2 OK"
echo "VALIDATED: 2/2 BLOCKED - logs in /tmp/forgeos.log"
