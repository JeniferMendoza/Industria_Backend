const path = require('path');
const {Pool,Client} = require('pg');

const dotenv = require('dotenv').config({path:path.resolve(__dirname,'../dev.env')});



const pg = new Pool({

    connectionString: process.env.CONNSTRING
  /*  user: process.env.USERBD,
    host: process.env.HOSTBD,
    database: process.env.NAMEBD,
    password: process.env.PASSBD,
    port: 5432*/
})


/*
console.log({ 1:process.env.USERBD,
    2:process.env.HOSTDB,
    3:process.env.NAMEBD,
    4:process.env.PASSBD,
    5:process.env.CONNSTRING})



*/

module.exports ={pg}