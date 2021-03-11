//const express = require("express");
import express from 'express'
const app = express();
const PORT = process.env.PORT = 3000;
import {CustomerOrdersController} from '../controllers/customerorders';
const customerorders = new CustomerOrdersController();
let router = express.Router();
var bodyParser = require('body-parser');



// parse application/json show fields
router.use(bodyParser.json())



router.post('/customerorders/add',function(req,res){

    customerorders.postAdd(req,res)
    .then(function(result){
    }); 
});


module.exports = router ;