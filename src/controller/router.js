const express= require('express');
const router = express.Router();

const home = require('../modules/home');

router.get('/',(req,res)=>{

    res.send('Hola mundo');
});


router.get('/f',home.home);


module.exports = router;