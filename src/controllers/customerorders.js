
import {CustomerOrdersService} from '../service/customerorders';
let  customerorders;

//controller
export class CustomerOrdersController{


	constructor() { // class constructor
   		
   		customerorders = new CustomerOrdersService(); //dependency injection
   	   
    }


   postAdd(req,res){

      try{
         return new Promise( ( resolve, reject ) => {   
            var response = customerorders.postAdd(req,res)
            .then(function(result){
            resolve(result);
             });
         
         });
      }catch(e){
        alert("sedfsd")
      }   
   }





}

