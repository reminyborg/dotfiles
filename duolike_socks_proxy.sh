#!/bin/bash
disable_proxy()
{
        networksetup -setsocksfirewallproxystate Wi-Fi off
        echo "SOCKS proxy disabled."
}
trap disable_proxy INT
 
networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 1337
networksetup -setsocksfirewallproxystate Wi-Fi on
echo "SOCKS proxy enabled."
echo "Tunneling..."

ssh -ND 1337 duolike
