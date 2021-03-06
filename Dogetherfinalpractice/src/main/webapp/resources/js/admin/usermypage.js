$(document).ready(function() {

//메인페이지  왼쪽 카테고리에서 클릭했을때!!
  $('#mainmypage').click(function(evt){
    evt.preventDefault();				// a태그 링크 기능 무력화
    evt.stopPropagation();				// a태그 링크 기능 무력화
    $("h1").hide();					// 페이지명 안보이게 변경
    $("#h1Admin").show();				// 페이지명 보이게 변경

    $(".sese").hide();					// 모든 리스트 테이블을 삭제
    $("#myPageMain").show();			// 런닝구 리스트 테이블만 보임으로 변경

  }); //end click

//내 런닝구  왼쪽 카테고리에서 클릭했을때!!
  $('#myRNG').click(function(evt){
    evt.preventDefault();				// a태그 링크 기능 무력화
    evt.stopPropagation();				// a태그 링크 기능 무력화
    $("h1").hide();					// 페이지명 안보이게 변경
    $("#h1RNG").show();				// 페이지명 보이게 변경

    $(".sese").hide();					// 모든 리스트 테이블을 삭제
    $("#MyRunninggo").show();			// 런닝구 리스트 테이블만 보임으로 변경

  }); //end click

//내정보 수정 왼쪽 카테고리에서 클릭했을때!!
  $('#myINFO').click(function(evt){
    evt.preventDefault();				// a태그 링크 기능 무력화
    evt.stopPropagation();				// a태그 링크 기능 무력화
    $("h1").hide();					    // 페이지명 안보이게 변경
    $("#h1INFO").show();				// 페이지명 보이게 변경

    $(".sese").hide();					// 모든 리스트 테이블을 삭제
    $("#UpdateMyInfo").show();			// 런닝구 리스트 테이블만 보임으로 변경

  }); //end click

  //내 게시글 관리 왼쪽 카테고리에서 클릭했을때!!
    $('#myMember').click(function(evt){
      evt.preventDefault();				// a태그 링크 기능 무력화
      evt.stopPropagation();				// a태그 링크 기능 무력화
      $("h1").hide();					// 페이지명 안보이게 변경
      $("#h1Member").show();				// 페이지명 보이게 변경

      $(".sese").hide();					// 모든 리스트 테이블을 삭제
      $("#MyBoard").show();			// 보드 리스트 테이블만 보임으로 변경

    }); //end click



//주소API-----------------------------------------------------------
var btnClickCount = 0;
   $("#btnAddress").on("click",function(){
      new daum.Postcode({
         oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
               fullAddr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
               fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
               //법정동명이 있을 경우 추가한다.
               if(data.bname !== ''){
                  extraAddr += data.bname;
               }
               // 건물명이 있을 경우 추가한다.
               if(data.buildingName !== ''){
                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
               fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('Zipcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('BasicAddress').value = fullAddr; // 커서를 상세주소 필드로 이동한다.
            document.getElementById('RestAddress').focus();
         }
      }).open();    //Postcode
   });         //click function



 $(document).on('keydown', '#keyText', function phoneFormat(){

       var firstnum = $('.phone').val().trim();

       var phone = firstnum.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");

       $('.phone').val(phone);

   });



//아이디 중복체크 버튼 버젼--------------------------------------------
$("#idCheckResult2").click(function(){
      btnClickCount+=1;
     $.ajax({
        type : 'get',
        url : 'idCheck.do',
        data : { memberID : $('#userId').val() },
        // 한글처리
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        success : function(result){

           if(result == "중복된 아이디입니다"){
                 $("#userId").val("");

              }//end of if
                     $('#idCheckResult').text(result);
                 $('#idCheckResult2').val(result);
        },
        error : function(err){
           alert("error");
        }
     })
});






// 닉네임 중복체크 버튼 버전-----------------------------------------
$("#nNCheckResult2").click(function(){
      btnClickCount+=1;
     $.ajax({
        type : 'get',
        url : 'nickNameCheck.do',
        data : { nickName : $('#usernickN').val() },
        // 한글처리
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        success : function(result){

           if(result == "중복된 닉네임입니다"){
              $("#usernickN").val("")
           }//end of if
                      $('#nNCheckResult').text(result);
                      $('#nNCheckResult2').val(result);
        },
        error : function(err){
           alert("error");
        }
     })
});


  //내 정보 수정 사진 미리보기 함수
    function setThumbnail(event) {
		var reader = new FileReader(); reader.onload = function(event) {
			$("#image_container").empty();//일단 비우자
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
		}




//전송 버튼을 눌렀을 때 값이 비어있으면---------------------
     $('#confirm').click(function(){

	alert("aa")
       if($.trim($('#userPass').val())==''){
          $('#userPass').text("비밀번호를 입력해 주세요.");
          $('#userPass').focus();
          return;
       }

       if($.trim($('#userPass').val()) != $.trim($('#userPass2').val())){
            $('#userPass2').text("비밀번호가 일치하지 않습니다..");
          alert("비밀번호가 일치하지 않습니다..");
          $('#userPass2').focus();
          return;
       }


       if($.trim($('#userName').val())==''){
          $('#userName').focus();
          return;
       }

     if($.trim($('#idCheckResult2').val())=='중복된 아이디입니다'){
         alert("아이디를 중복확인해주세요.");
         return;
      }


       // 전화번호-------------------------------------------------------------

   /*보류-------------------------전화번호 사이에 하이픈 넣는거임 ---------------------------------*/

   $(document).on('keydown', '#keyText', function phoneFormat(){

       var firstnum = $('.phone').val().trim();

       var phone = firstnum.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");

       $('.phone').val(phone);

   });


       if(btnClickCount<2){
          alert("중복버튼을 눌러주세요");
          return;
       }

        // 자료를 전송합니다.
        $('#userinput').submit();
   });
//-------------------------------------------------------







})//end ready
