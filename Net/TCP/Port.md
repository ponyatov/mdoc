# Net/TCP/Port

Using [[TcpListener]], we can listen for TCP connections at the address [[Net/localhost|127.0.0.1]]:[[Net/TCP/Port|7878]]. In the [[Net/address]], the section before the colon is an [[IP/address]] representing your computer (this is the same on every computer and doesn’t represent the authors’ computer specifically), and `7878` is the [[Net/TCP/Port|port]]. We’ve chosen this port for two reasons: [[HTTP]] isn’t normally accepted on this port, and 7878 is _rust_ typed on a telephone keyboard.

- connecting to [[TCP/port/80|port 80]] requires administrator privileges
- nonadministrators can listen only on ports higher than 1023

