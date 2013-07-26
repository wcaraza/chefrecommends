chefrecommends
==============

The application management support restaurants! displays a list of menus to your customers, shows pictures of meals, places orders, synchronize your system information.

## How to use

## API

Para actualizar la bd de aplicación movil se debe consultar las tablas de la base de datos

Ejemplo usando php-zend framework
```js

$this->_itemModelo = new Models_ItemModelo;
$itemArray=$this->_itemModelo->listItemAll($appid);

foreach($itemArray as $key => $value){
    $itemData[] = $value;
}
$response["items"] = $itemData;

$response["producto"] = array(array(
        "id" => 7, 
        "nombre" => "Chicharron de pollo", 
        "descripcion" => "",
        "stock" => 30, 
        "precio" => 10.5, 
        "idestado"=> 1, 
        "imagen" => "http://a3.twimg.com/profile_images/740897825/AndroidCast-350_normal.png"));
$response["cliente"] = array(array(
        "id" => 8, 
        "nombre" => "Mesa 8"));
$response["producto_galeria"] = array(
        array(
          "id" => 1, 
          "idproducto" => 1, 
          "imagen" => "http://farm6.static.flickr.com/5186/5841048399_8d9d7aeefe.jpg", 
          "file" => "5841048399_8d9d7aeefe.jpg", 
          "idestado" => 1),
        array(
          "id" => 2, "idproducto" => 1, 
          "imagen" => "http://www.generaccion.com/w/imagenes/gastronomia/recetas/frijoles-con-seco.jpg", 
          "file" => "frijoles-con-seco.jpg", 
          "idestado" => 1),
        array(
          "id" => 3, 
          "idproducto" => 7, 
          "imagen" => "http://7artminds.com/nikiweb/Imagenes/chicharron-de-pollo.jpg", 
          "file" => "chicharron-de-pollo.jpg",
          "idestado" => 1));
        
        exit(Zend_Json::encode($response));
```
