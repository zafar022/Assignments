## 1:How to kill a process

 - forcefully >>by using kill -9 PID
- gracefully>> by using kill -15 PID

## 2:Filter
```
FILTER – this is the default table, which contains the built in chains for: 
INPUT  – packages destined for local sockets 
FORWARD – packets routed through the system 
OUTPUT – packets generated locally
```

## 3:Set default policies for INPUT, FORWARD and OUTPUT chains
```
iptables -P INPUT DROP
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
```
## 4:Allow only vagrant machine 1
```
iptables -A INPUT -p tcp --dport ssh -s <192.168.0.84> -j ACCEPT
```

## 5:Add ports 80 & 443 to iptables
```
iptables -I INPUT 1 -p tcp --dport 80 -j ACCEPT
iptables -I INPUT 1 -p tcp --dport 443 -j ACCEPT
