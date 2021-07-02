#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.helleniccoincore/helleniccoind.pid file instead
helleniccoin_pid=$(<~/.helleniccoincore/testnet3/helleniccoind.pid)
sudo gdb -batch -ex "source debug.gdb" helleniccoind ${helleniccoin_pid}
