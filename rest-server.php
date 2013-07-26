<?php 

class ServicesWeb
{
/**
* Write to a file
*
* @param string $string
* @return string Some return message
*/ 
    
  public function iorder($appid)
  {    
      $response["producto"] = array(array("id" => 7, "nombre" => "Chicharron de pollo", "descripcion" => "","stock" => 30, "precio" => 10.5, "idestado"=> 1, "imagen" => "http://a3.twimg.com/profile_images/740897825/AndroidCast-350_normal.png"));
      $response["cliente"] = array(array("id" => 8, "nombre" => "Mesa 8"));
      $response["producto_galeria"] = array(array("id" => 1, "idproducto" => 1, "imagen" => "http://farm6.static.flickr.com/5186/5841048399_8d9d7aeefe.jpg", "file" => "5841048399_8d9d7aeefe.jpg", "idestado" => 1),
          array("id" => 2, "idproducto" => 1, "imagen" => "http://www.generaccion.com/w/imagenes/gastronomia/recetas/frijoles-con-seco.jpg", "file" => "frijoles-con-seco.jpg", "idestado" => 1),
          array("id" => 3, "idproducto" => 7, "imagen" => "http://7artminds.com/nikiweb/Imagenes/chicharron-de-pollo.jpg", "file" => "chicharron-de-pollo.jpg", "idestado" => 1));
      
      exit(Zend_Json::encode($response));
  }
  
  public function token($hash,$idapp,$lang=null)
  {
      $this->_pushModelo = new Models_PushModelo;
      $insertData = array('token' => $hash, 'id_app' => $idapp, 'lang' => $lang);
$this->_pushModelo->insert($insertData);
      
      $response = array('success'=>1);
      exit(Zend_Json::encode($response));
  }
  
  public function user_registration()
  {
      $this->_userModelo = new Models_UserModelo;
$this->_userModelo->insert($_POST);
      
      $response = array('success'=>1);
      exit(Zend_Json::encode($response));
  }
}

class RestServerController extends Zend_Rest_Controller
{

  public function init()
  {
      $this->_helper->viewRenderer->setNoRender(true);
  }
  
  
  public function restAction()
  {
      $server = new Zend_Rest_Server();
      $server->setClass("ServicesWeb");
      $server->handle();
      exit;
  }

  public function indexAction()
  {
       
     return;
  }

  public function getAction()
  {
      $this->getResponse()
          ->appendBody("From getAction() returning the requested article");

  }
  
  public function postAction()
  {
      $this->getResponse()
          ->appendBody("From postAction() creating the requested article");

  }
  
  public function putAction()
  {
      $this->getResponse()
          ->appendBody("From putAction() updating the requested article");

  }
  
  public function deleteAction()
  {
      $this->getResponse()
          ->appendBody("From deleteAction() deleting the requested article");

  }
}
