$(document).ready(function(){


  $(document).on('click', '#cartBtn', function(){

    let Cnt = $("#productCnt").val();
    let Name = $("#ProductNameName").text();
    let ID = $("#productIDvalue").text();
    $.ajax({
    	type : 'post',
    	data : {productQuantity : Cnt,productID : ID},
    	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
    	url : 'shoppingCartInsert.do',
    	success : function(result){
    		alert(Name+" "+Cnt+"건 "+result);
    	},//end success
    	error : function(err){
    		alert(err);
    	}//end error
    });//end of ajax
  })
//end of click





  $(document).on('click', '#removeBtn', function(){
    let ID = $("#ProductID").text();
    alert(ID)
    $.ajax({
    	type : 'post',
    	data : {productID : ID},
    	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
    	url : 'deletefromjanbaguni.do',
    	success : function(result){
    		alert(ID+" "+result);

    	},//end success
    	error : function(err){
    		alert("dddderrordddd");
    	}//end error
    });//end of ajax

  })//end of click



  $(document).on('click', '#updateBtn', function(){
    let CNT = $("#ProductCNT").val();
    alert(ID)
    $.ajax({
      type : 'post',
      data : {productID : CNT},
      contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
      url : 'deletefromjanbaguni.do',
      success : function(result){
        alert(ID+" "+result);

      },//end success
      error : function(err){
        alert("dddderrordddd");
      }//end error
    });//end of ajax

  })//end of click




}); //end of ready
