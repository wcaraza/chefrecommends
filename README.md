chefrecommends
==============

The application management support restaurants! displays a list of menus to your customers, shows pictures of meals, places orders, synchronize your system information.

## How to use

## API

Para actualizar la bd de aplicación movil se debe consultar las tablas de la base de datos

Request Webservices:

1) Enviar nuevo Pedido
```js

[
  {
    "fecha": "2014-01-03 02:00:18",
    "idestado": 1,
    "total": 54,
    "id": 27,
    "idcliente": 6
  },
  {
    "fecha": "2014-01-03 02:00:30",
    "idestado": 1,
    "total": 30,
    "id": 28,
    "idcliente": 1
  }
]
```

2) Enviar Detalle de pedido
```js
[
  {
    "total": 30,
    "precio": 15,
    "cantidad": 2,
    "id": 40,
    "idproducto": 1,
    "idpedido": 27
  },
  {
    "total": 18,
    "precio": 18,
    "cantidad": 1,
    "id": 41,
    "idproducto": 3,
    "idpedido": 27
  },
  {
    "total": 6,
    "precio": 6,
    "cantidad": 1,
    "id": 42,
    "idproducto": 17,
    "idpedido": 27
  },
  {
    "total": 30,
    "precio": 15,
    "cantidad": 2,
    "id": 43,
    "idproducto": 1,
    "idpedido": 28
  }
]
```

Response Webservices:

1) API para escribir información desde el servidor a la aplicación
```js
{
  "cliente": [
    {
      "id": "1",
      "nombre": "Mesa 1"
    },
    {
      "id": "2",
      "nombre": "Mesa 2"
    },
    {
      "id": "3",
      "nombre": "Mesa 3"
    },
    {
      "id": "4",
      "nombre": "Mesa 4"
    },
    {
      "id": "5",
      "nombre": "Mesa 5"
    },
    {
      "id": "6",
      "nombre": "Mesa 6"
    },
    {
      "id": "7",
      "nombre": "Mesa 7"
    },
    {
      "id": "8",
      "nombre": "Mesa 8"
    },
    {
      "id": "9",
      "nombre": "Mesa 9"
    },
    {
      "id": "10",
      "nombre": "Mesa 10"
    }
  ],
  "productos": [
    {
      "id": "2",
      "nombre": "Chicharron de pollo",
      "descripcion": "",
      "stock": "30",
      "precio": "10.5",
      "idestado": "1",
      "imagen": "http://a3.twimg.com/profile_images/740897825/AndroidCast-350_normal.png"
    }
  ],
  "producto_galeria": [
    {
      "id": "3",
      "idproducto": "1",
      "imagen": "http://farm6.static.flickr.com/5186/5841048399_8d9d7aeefe.jpg",
      "file": "5841048399_8d9d7aeefe.jpg",
      "idestado": "1"
    },
    {
      "id": "4",
      "idproducto": "1",
      "imagen": "http://www.generaccion.com/w/imagenes/gastronomia/recetas/frijoles-con-seco.jpg",
      "file": "frijoles-con-seco.jpg",
      "idestado": "1"
    },
    {
      "id": "5",
      "idproducto": "7",
      "imagen": "http://7artminds.com/nikiweb/Imagenes/chicharron-de-pollo.jpg",
      "file": "chicharron-de-pollo.jpg",
      "idestado": "1"
    },
    {
      "id": "6",
      "idproducto": "1",
      "imagen": "http://www.viajejet.com/wp-content/viajes/ceviche.jpg",
      "file": "ceviche.jpg",
      "idestado": "1"
    }
  ]
}
```
