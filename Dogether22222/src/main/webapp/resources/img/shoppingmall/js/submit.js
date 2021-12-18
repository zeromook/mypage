$(document).ready(function(){

//장바구니  추가--------------------
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
    		alert("에러발생--------------");
    	}//end error
    });//end of ajax
  })
//end of click




//장바구니에서 삭제--------------------
  $(document).on('click', '#removeBtn', function(){
    let ID = $("#ProductID").text();
    let Name = $("#ProductName").text()
    
    $.ajax({
    	type : 'post',
    	data : {productID : ID},
    	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
    	url : 'deletefromjanbaguni.do',
    	success : function(result){
    		alert(Name+" "+result);

    	},//end success
    	error : function(err){
    		alert("에러발생--------------");
    	}//end error
    });//end of ajax

  })//end of click

  
  
//장바구니에서 수량변경--------------------일단 보류-----------------
/*
  $(document).on('click', '#updateBtn', function(){
    let CNT = $("#ProductCNT").val();
    let ID = $("#ProductID").text();
    alert(CNT)
    $.ajax({
      type : 'post',
      data : {productQuantity : CNT,productID : ID},
      contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
      url : 'updateQuantity.do',
      success : function(result){
        alert(result);
      },//end success
      error : function(err){
        alert("에러발생--------------");
      }//end error
    });//end of ajax

  })//end of click
*/



}); //end of ready
