const express = require('express');
const serv = express();

serv.use(express.static('public'));
serv.listen(3000, ()=>{
    console.log('Servidor esperando conexiones');
});