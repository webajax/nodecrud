module.exports = {
    validate: function(res,field) {

           return  res.json({
                "success" : false,
                "message": "Atenção: O "+field+" não pode ser vazio.",
                "data"   : "Campo Vazio"
              });		

    },
    msgvalidatedata: function(res,field) {


              return  res.json({
                "success" : false,
                "message": field + " Inválido",
                "data"   : ""
              });			

    },
    validatecep: function(cep){

              if (cep.length == 8) 
                 return true;              
              else         
                 return false;

    },
    validateemail: function(email){
      const expression = /(?!.*\.{2})^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i

      return expression.test(String(email).toLowerCase())

    },

 dateEUA: function() {

		var data = new Date();

			// Guarda cada pedaço em uma variável
			var day     = data.getDate();           // 1-31
			var month   = data.getMonth();          // 0-11 (zero=janeiro)
			var year    = data.getFullYear();       // 4 dígitos
			var hour    = data.getHours();          // 0-23
			var minutes = data.getMinutes();        // 0-59
			var seconds = data.getSeconds();        // 0-59
			

			// Formata a data e a hora (note o mês + 1)
			var date = year + '-' + month + '-' + day;
			var hour = hour + ':' + minutes + ':' + seconds;
			var created = date + " " + hour;

			return created;

		  },


};



