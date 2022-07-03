const {pg} = require('../config/pg.config');

const home = (req,res)=>{

    pg.connect((err, client, release) => {
        if (err) {
          return console.error('Error acquiring client', err.stack)
        }
        client.query('SELECT NOW()', (err, result) => {
          release()
          if (err) {
            return console.error('Error executing query', err.stack)
          }
          console.log(result.rows)
          res.send({mensaje:'Hola desde el backend',fecha:result.rows[0].now});
        })
      })
   
}

module.exports ={
    home
}