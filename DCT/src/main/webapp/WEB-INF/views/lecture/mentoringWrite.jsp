<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../include/header.jsp" %>
	


<style>
/*---------------------------- lec-upload ---------------------------------------*/
.writebox {
	width: 250px;
	text-align: center;
	height: 40px;
	line-height: 40px;
	margin: 70px auto;
	border-top: 1px solid #e1e1e1;
	border-bottom: 1px solid #e1e1e1;
	font-size: 20px;
}


.lec-write-wrap {
	width: 70%;
	margin: 0 auto;
	float: none;
}

.w-control .w-title {
	width: 100px;
}

.w-control input {
	width: 200px;
}

.w-control textarea {
	resize: none;
}

.writefoot {
	text-align: center;
	margin: 70px auto;
} 

#editor{
	height: 400px;
	width: 100%;
}

/*---검색버튼--- */
.categoty-wrap {
   overflow: hidden; /*부모요소에 히든 */
   margin-bottom: 10px;
}


.category-select {
   float: left;
   width: 100px;
}



</style>

<div id="wrapper">
		
		<!-- name은 변수명이랑 같게  -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 lec-write-wrap">
                        <div class="writebox">
                            멘토링 Upload
                        </div>
    
                        <form action="<c:url value='/lecture/lectureRegist' />" name="registForm" method="post" enctype="multipart/form-data">
                            <table class="table">
                                <tbody class="w-control">
                                    <tr>
                                      <c:choose> 
	                                    <c:when test="${login.userNick != null}">
											<td class="w-title" >글쓴이</td>
											<td><input type="text" class="form-control" name="lectureWriter" value="${login.userNick}" readonly></td>
										</c:when>
										<c:otherwise>
											<td class="w-title" >글쓴이</td>
											<td><input type="text" class="form-control" name="lectureWriter" value="${login.userName}" readonly></td>
										</c:otherwise>
									 </c:choose>
                                        
                                        
                                    </tr>
                                    <tr>
                                        <td class="w-title" >TITLE</td>
                                        <td><input type="text" class="form-control" name="lectureTitle"></td>
                                    </tr>
                                    <tr>
                                        <td class="w-title">price</td>
                                        <td><input type="number" class="form-control" name="lecturePrice"></td>
                                    </tr>
                                    <tr>
                                        <td class="w-title">category</td>
                                        <td><!-- Single button -->
                                            <div class="category-wrap clearfix">
											<select class="form-control category-select" name="categoryNo">
												<option value="1">프로그래밍</option>
												<option value="2">요리</option>
												<option value="3">여행</option>
												<option value="4">DIY</option>
											</select>
										</div>
									</td>
                                    </tr>
                                    <tr>
                                        <td class="w-title">CONTENT</td>
                                        <td>
                                            <!-- 2. TEXT 편집 툴을 사용할 textarea -->
                                        <div id="editor" ></div>    
                                        <input type="hidden" id="content" name="lectureContent">
                                        <!--
                                        <textarea id="editor" placeholder="Spring에서 영상 업로드 및 구현 .xml 필요" name="lectureContent"></textarea>
                                          -->
                                        </td>
                                    </tr>
                                   
                                   
                                </tbody>
                            </table>
                        </form>
                                                
                                                
                        <div class="writefoot">
                            <button class="btn" id="registBtn">등록</button>
                            <button class="btn" id="listBtn">목록</button>
                        </div>
    
                    </div>
                </div>
            </div>
       
            
        </section>    
    </div>	
            

<%@ include file="../include/footer.jsp" %>


<script>

	//const Editor = toastui.Editor;

	const editor = new toastui.Editor({
	  el: document.querySelector('#editor'),
	  width: '100%',
	  height: '40.327rem',
	  initialEditType: 'markdown',
	  previewStyle: 'vertical'
	});
	
  	
	
	
 	const $registBtn = document.getElementById('registBtn');
 	
 	$registBtn.onclick = function() {
 		
 		var content = editor.getHTML();
		$('#content').val(content);
		console.log(content)
 		
 		//form태그는 document.폼 네임으로 바로 접근이 가능.
 		if(document.registForm.lectureTitle.value === ''){
 			alert('제목은 필수 항목입니다.');
 			document.registForm.lectureTitle.focus();
 			return; //강제 종료
 		} else if(document.registForm.lecturePrice.value === ''){
 			alert('가격은 필수 항목입니다.');
 			document.registForm.lecturePrice.focus();
 			return; //강제 종료
 		} else if(document.registForm.lectureThumbnail.value === ''){
 			alert('썸네일은 필수 항목입니다.');
 			document.registForm.lectureThumbnail.focus();
 			return; //강제 종료
 		} else if(document.registForm.lectureContent.value === ''){
 			alert('내용은 필수 항목입니다.');
 			document.registForm.lectureContent.focus();
 			return; //강제 종료
 		} else {
 			document.registForm.submit();
 		}
 		
 	};
 			
 
 	
 	
 	$('#listBtn').click(function(){
 		if(confirm('목록으로 돌아가시겠습니까?')){
 			location.href = '<c:url value="/lecture/lecturePage" />'
 		} else return;
 	});
 	
 	
 
</script>



	
