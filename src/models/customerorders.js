//import {Connection} from '../../config/database';
const Connection = require('../../config/database'); 
let connect;//var database connect
//model
export class CustomerOrdersModel{



	constructor() { // class constructor
 		
       connect  = new Connection();

    }

  

   postAdd(data){

   		var sql;

    	sql = "INSERT INTO customer_order (name,email,cpf,cep,frete,value,itens,itens_sku,itens_description,itens_value,itens_qtde,created) VALUES('"+data[0]+"','"+data[1]+"' ,'"+data[2]+"' , "+data[3]+","+data[4]+","+data[5]+",'"+data[6]+"' ,'"+data[7]+"','"+data[8]+"',"+data[9]+","+data[10]+",'"+data[11]+"' )";


    	console.log(sql);


	  	return new Promise( ( resolve, reject ) => {   
		   connect.conn(sql)
	       .then(function(result){
	       	  resolve(result);
	       });
	   });  
   }   


 postErr(){

   		var sql;

    	sql = "select * from customer_order"



	  	return new Promise( ( resolve, reject ) => {   
		   connect.conn(sql)
	       .then(function(result){
	       	  resolve(result);
	       });
	   });  
   }   


  
}