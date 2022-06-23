# Flask-Sock

- https://blog.miguelgrinberg.com/post/add-a-websocket-route-to-your-flask-2-x-application

https://flask-sock.readthedocs.io/en/latest/quickstart.html#example

An important feature of [[HTTP]] that is not available in WebSocket is the ability to set cookies. In HTTP, cookies are set in the response headers. WebSocket does not use an HTTP response, so it is not possible to set a [[Web/cookie]] when the WebSocket connection ends. This means that changes made to the [[Flask/session|session]] object in the [[WebSocket]] handler function are not saved.

also [[serialization]]