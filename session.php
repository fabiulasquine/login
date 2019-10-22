<?php 
session_start();
require_once "configbd.php";

if(isset($_SESSION['nomeDoUsuario'])){
    //logado

}else{
    //se não estiver logado, redirecionar para o index
    header("location: index.php");
}