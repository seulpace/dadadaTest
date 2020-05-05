<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
   <link rel="icon" href="${pageContext.request.contextPath}/resources/images/LogoExample.png" type="image/png" />

   <!-- menubar 위에 있던 파일의 경우에 css가 적용되지 않아 두 개의 css 따로 적용  -->
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/basic/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath}/resources/css/custom.min.css" rel="stylesheet">
 
    <title>Byeworks</title>
</head>
<body class="nav-md">
   <div class="container body">
       <div class="main_container">
        
        <!-- 메뉴바 -->
        <jsp:include page="../common/menubar.jsp"/>


        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row">
            <div class="col-md-12 col-sm-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>전체 직원 조회</h2>
                  
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-sm-12">
                          <div class="card-box table-responsive">
      
                            <table id="datatable" class="table table-bordered table-hover">
                              <thead>
                                <tr>
                                  <th>No.</th>
                                  <th>이름</th>
                                  <th>부서</th>
                                  <th>직책</th>
                                  <th>사내전화</th>
                                  <th>이메일</th>
                                </tr>
                              </thead>
                              <tbody>
                                
                                <c:forEach items="${ list }" var="m">
	                                <tr>
	                              	  <input type="hidden" name="memberNo" value="${ m.memberNo }">
	                                  <td><input type="checkbox" id="retireday" name="retireday" ></td>
	                                  <td>${ m.memberName }</td>
	                                  <td>${ m.department }</td>
	                                  <td>${ m.position }</td>
	                                  <td>${ m.extension }</td>
	                                  <td>${ m.email }</td>
	                                </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">사원퇴사</button>

                            <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                              <div class="modal-dialog modal-sm">
                                <div class="modal-content">

                                  <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel2">사원 퇴사</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <h4>퇴사 처리하시겠습니까?</h4>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
                                    <button type="button" class="btn btn-primary">네</button>
                                  </div>

                                </div>
                              </div>
                            </div>
                            <button type="button" class="btn btn-primary">사원등록</button>
                          </div>
                        </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        
        <script>
        	$(function(){
        		$("#datatable tbody tr").click(function(){
        			location.href="detail.me?mno=" + $(this).children().eq(0).val();	
        		});
        	});
        
        </script>
        
        
        
        <!-- /page content -->

        <!-- footer content -->
        <jsp:include page="../common/footer.jsp"/>
        
      </div>
    </div>
    
    <!-- 메인 틀을 구성하기 위한 JS 추가 코드 -->
   <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/basic/bootstrap.bundle.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.min.js"></script>
   
</body>
</html>