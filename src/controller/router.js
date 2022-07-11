const express= require('express');
const router = express.Router();
const multer = require("../config/multer.config");


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