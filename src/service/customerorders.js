import {CustomerOrdersModel} from '../models/customerorders';
import validator from 'cpf-cnpj-validator';
const util = require('util');
const isset = require('isset');
var shell = require('shelljs');
let  customerorders;
var gl = require('../helpers/global.js');



//controller RULES
export class CustomerOrdersService{


	constructor() { // class constructor
   		
   		customerorders = new CustomerOrdersModel(); //dependency injection
   	   
    }

  postAdd(req,res){


         var data=[]; 


         if(req.body.name == ""){


           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'nome');
                    resolve(res);
                  })
                     
              }); 


         }
             

         if(req.body.email == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'email');
                    resolve(res);
                  })
                     
              });          }
         

         if(req.body.cpf == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'cpf');
                    resolve(res);
                  })
                     
              }); 
         }

         if(req.body.cep == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'cep');
                    resolve(res);
                  })
                     
              }); 
         }

         if(req.body.frete == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'frete');
                    resolve(res);
                  })
                     
              }); 
         }


         if(req.body.value == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'valor');
                    resolve(res);
                  })
                     
              }); 
         }


         if(req.body.itens == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'itens');
                    resolve(res);
                  })
                     
              }); 
         }

         if(req.body.itens_sku == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'itens sku');
                    resolve(res);
                  })
                     
              }); 
         }


         if(req.body.itens_description == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'item descrição');
                    resolve(res);
                  })
                     
              }); 
         }


         if(req.body.itens_value == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'itens valor');
                    resolve(res);
                  })
                     
              }); 
         }

         if(req.body.item_qtde == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'itens qtde');
                    resolve(res);
                  })
                     
              }); 
         }


         if(req.body.created == ""){
           //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
                var response = customerorders.postErr()
                    .then(function(result){
                    res =  gl.validate(res,'data criação');
                    resolve(res);
                  })
                     
              }); 
         }

          const Joi       = require('@hapi/joi').extend(validator);
          const cpfSchema = Joi.document().cpf();
          
          const cpf = cpfSchema.validate(req.body.cpf);

          if (isset(cpf.error)){

            //desculpe faltou tempo pra criar a pagina de erros tive que fazer assim o metodo no model
            return new Promise( ( resolve, reject ) => { 
               try{  
                    var response = customerorders.postErr()
                    .then(function(result){

                     res =  gl.msgvalidatedata(res,'cpf');

                    resolve(res);

                  })
                }catch(e){
                  alert("erro:");
                }            
              });  
          }       
            
          
          //validate cep
          var cep = gl.validatecep(req.body.cep);
                 
               
          if(cep != true){


              return new Promise( ( resolve, reject ) => { 
               try{  
                    var response = customerorders.postErr()
                    .then(function(result){

                     res =  gl.msgvalidatedata(res,'cep');

                    resolve(res);

                  })
                }catch(e){
                  alert("erro:");
                }            
              });  

          }
       

          //validate email
          var email = gl.validateemail(req.body.email);


          if(email != true){


              return new Promise( ( resolve, reject ) => { 
               try{  
                    var response = customerorders.postErr()
                    .then(function(result){

                    res =  gl.msgvalidatedata(res,'email');

                    resolve(res);

                  })
                }catch(e){
                  alert("erro:");
                }            
              });  

          }   


         data.push(req.body.name,req.body.email,req.body.cpf,req.body.cep,req.body.frete,req.body.value,req.body.itens,req.body.itens_sku,req.body.itens_description,req.body.value,req.body.itens_qtde,req.body.created);

          
             return new Promise( ( resolve, reject ) => { 
               try{  
                    var response = customerorders.postAdd(data)
                    .then(function(result){

                     
                           if(result[1]["affectedRows"]==1){
                                  res.json({
                                      "success" : true,
                                      "message": "Pedido(s) Cadastrado(s) com Sucesso!",
                                      "data"   : result[1] 
                                    }); 
                                }else{
                                  res.json({
                                      "success" : false,
                                      "message": "Erro: Pedido(s) não Cadastrado(s).",
                                      "data"   : result[1]
                                    });         
                                }


                    resolve(res);

                  })
                }catch(e){
                  alert("erro:");
                }
             
             });     

         
   }


  


}

