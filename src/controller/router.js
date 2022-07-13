const express= require('express');
const router = express.Router();
const multer = require("../config/multer.config");

//MODULO 1 USUARIOS
const usuario = require('../modules/m1_usuarios');
router.post('/nuevoUsuario',usuario.nuevoUsuario);
router.get('/verificarUsuario/:token',usuario.verificarUsuario);
router.post('/actualizarImagenPerfil/:id',multer.loadFile.single('imagenPerfil'),usuario.actualizarImagenPerfil);
router.post('/inicioSesion',usuario.inicioSesion);
router.post('/solicitudNuevaContrasenia',usuario.solicitudNuevaContrasenia);
//POSIBLEMENTE CAMBIE A UN POST 
router.get('/nuevaContraseniaForm/:token',usuario.nuevaContraseniaForm);
//
router.post('/guardarNuevaContrasenia',usuario.guardarNuevaContrasenia)









const home = require('../modules/home');


//pruebas
router.get('/',(req,res)=>{
    res.send('hola mundo');
})
router.get('/img',home.img);


//USUARIOS
const users = require('../modules/users');
router.post('/newUser',users.newUser);
router.get('/verifyUser/:token',users.verifyUser)

router.post('/updateImageUser/:id',multer.loadFile.single('imageUser'),users.updateImageUser);


module.exports = router;