$(document).ready(function() {

//메인 마이페이지 왼쪽 카테고리에서 클릭했을때!!

alert("aaaaaaa")
  $('#adminRNG').click(function(evt){

    evt.preventDefault();				// a태그 링크 기능 무력화
    evt.stopPropagation();				// a태그 링크 기능 무력화
    $("h1").hide();					// 페이지명 안보이게 변경
    $("#h1RNG").show();				// 페이지명 보이게 변경

    $(".myImgPoint").hide();					// 모든 리스트 테이블을 삭제
    $("#adminRNGList").show();			// 런닝구 리스트 테이블만 보임으로 변경

    $(".divHide").hide();				// 모든 정렬 안보이게 변경
    $(".sortRNG").show();				// 런닝구 정렬만 보이게 변경


  }); //end click








})//end ready
