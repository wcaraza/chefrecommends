chefrecommends
==============

The application management support restaurants! displays a list of menus to your customers, shows pictures of meals, places orders, synchronize your system information.

## How to use

```js
var server = require('http').Server();
var io = require('socket.io')(server);
io.on('connection', function(socket){
  socket.on('event', function(data){});
  socket.on('disconnect', function(){});
});
server.listen(3000);
```
