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
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>업체 주소록</h3>
              </div>
            </div>

            <div class="clearfix"></div>
            <br>
            <ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="addressTab" data-toggle="tab" href="#address" role="tab" aria-controls="address" aria-selected="true">전체</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="markAddressTab" data-toggle="tab" href="#markAddress" role="tab" aria-controls="markAddress" aria-selected="false">즐겨찾기</a>
              </li>
            </ul>
  
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="address" role="tabpanel" aria-labelledby="addressTab">
                
                <div class="row" style="display: block;">
                  <div class="col-md-12 col-sm-12 ">
                    <div class="x_panel">
                      <!-- 그룹 -->
                      <div class="form-group row" style="padding-right: 15px; padding-left:15px;">
                        <label class="control-label col-md-2 col-sm-2" style="text-align: right;height: 35px;
                        line-height: 35px;">그룹별로 조회하기</label>
                        <div class="col-md-2 col-sm-2 ">
                          <select class="select2_single form-control" tabindex="-1">
                            <option></option>
                            <option value="AK">비즈니스1급</option>
                            <option value="HI">일못함</option>
                            <option value="CA">성격더러움</option>
                          </select>
                        </div>
                      </div>
                      <!--  -->
                    </div>
                  </div>
                </div>

                <!-- 본문 테이블 -->
                <div class="row" style="display: block;">
                  <div class="col-md-12 col-sm-12 ">
                    <div class="x_panel">                  
                      <div class="x_content">
                        <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
    
                              <table id="datatable-checkbox" class="table table-bordered" style="width:100%">
                                <thead>
                                  <tr>
                                    <th ></th>
                                    <th ></th>
                                    <th >이름</th>
                                    <th >업체명</th>
                                    <th >직급</th>
                                    <th >그룹명</th>
                                    <th >이메일</th>
                                    <th >번호</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <th style="text-align: center;">
                                      <div class="checkbox">
                                        <label>
                                          <input type="checkbox" class="flat">
                                        </label>
                                      </div>
                                    </th>
                                    <td style="text-align: center; cursor: pointer;">
                                      <i class="fa fa-heart" style="font-size:1.5em; color:red"></i>
                                    </td>
                                    <td>김정수</td>
                                    <td>주식회사 정식품</td>
                                    <td>대리</td>
                                    <td>비즈니스1급</td>
                                    <td>jeong@fat.co.kr</td>
                                    <td>(714)6523-4578</td>
                                  </tr>
                                </tbody>
                              </table>
    
                              <br>
                              <!-- 버튼들 -->
                              <div style="padding-left: 15px; padding-right: 15px;">
                                <button class="btn btn-dark" style="float: left;" data-toggle="modal" data-target=".addGroup"><small>그룹 추가</small></button>
                                <button class="btn btn-dark" style="float: left;" data-toggle="modal" data-target=".updateGroup"><small>그룹 수정</small></button>
                                <div style="float:right;">
                                  <button class="btn btn-diy" style="color:white;" data-toggle="modal" data-target=".addAddress"><small>주소 추가</small></button>
                                  <button class="btn btn-diy" style="color:white;"><small>주소 삭제</small></button>
                                </div>
                              </div>
                            </div>
                          </div>                      
                        </div>                    
                      </div>                  
                    </div>
                  </div>
                </div>

              </div>
              <!-- 일반 주소록 끝 -->
              
              <div class="tab-pane fade" id="markAddress" role="tabpanel" aria-labelledby="markAddressTab">              
                
                <!-- 본문 테이블 -->
                <div class="row" style="display: block;">
                  <div class="col-md-12 col-sm-12 ">
                    <div class="x_panel">                  
                      <div class="x_content">
                        <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                              
                              <table id="datatable" class="table table-bordered" style="width:100%">
                                <thead>
                                  <tr>
                                    <th ></th>
                                    <th ></th>
                                    <th >이름</th>
                                    <th >업체명</th>
                                    <th >직급</th>
                                    <th >그룹명</th>
                                    <th >이메일</th>
                                    <th >번호</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <th style="text-align: center;">
                                      <div class="checkbox">
                                        <label>
                                          <input type="checkbox" class="flat">
                                        </label>
                                      </div>
                                    </th>
                                    <td style="text-align: center; cursor: pointer;">
                                      <i class="fa fa-heart" style="font-size:1.5em; color:red"></i>
                                    </td>
                                    <td>김정수</td>
                                    <td>주식회사 정식품</td>
                                    <td>대리</td>
                                    <td>비즈니스1급</td>
                                    <td>jeong@fat.co.kr</td>
                                    <td>(714)6523-4578</td>
                                  </tr>
                                </tbody>
                              </table>

                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
              </div>
              <!-- 즐겨찾기 끝 -->
            </div>            
          </div>
        </div>
        <!-- /page content -->

        <!-- Modal 그룹 추가 -->
        <div class="modal fade addGroup" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">

              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">그룹 추가</h4>
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
                <!-- 모달창 그룹 추가 본문 내용 -->
                <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                  <div class="item form-group">
                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">
                      <span class="required">그룹명</span>
                    </label>
                    <div class="col-md-6 col-sm-6 ">
                      <input type="text" id="first-name" required="required" class="form-control ">
                    </div>
                  </div>

                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-diy" style="color: white;">추가</button>
              </div>

            </div>
          </div>
        </div>

        <!-- Modal 그룹 추가 -->
        <div class="modal fade updateGroup" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">

              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">그룹 수정</h4>
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
                <!-- 모달창 그룹 추가 본문 내용 -->
                <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                  <div class="item form-group">
                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">
                      <span class="required">그룹명</span>
                    </label>

                    <select class="select2_single form-control" tabindex="-1">
                      <option></option>
                      <option value="AK">비즈니스1급</option>
                      <option value="HI">일못함</option>
                      <option value="CA">성격더러움</option>
                    </select>
                    
                  </div>

                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-diy" style="color: white;">추가</button>
              </div>

            </div>
          </div>
        </div>

        <!-- Modal 연락처 추가 -->
        <div class="modal fade addAddress" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">

              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">주소록 추가</h4>
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
                <br />
                <form class="form-label-left input_mask">

                  <div class="col-md-6 col-sm-6  form-group has-feedback">
                    <input type="text" class="form-control has-feedback-left" id="inputSuccess2" placeholder="이름">
                    <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                  </div>

                  <div class="col-md-6 col-sm-6  form-group has-feedback">
                    <input type="text" class="form-control" id="inputSuccess3" placeholder="회사명">
                    <span class="fa fa-building form-control-feedback right" aria-hidden="true"></span>
                  </div>

                  <div class="col-md-6 col-sm-6  form-group has-feedback">
                    <input type="text" class="form-control has-feedback-left" id="inputSuccess4" placeholder="이메일">
                    <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                  </div>

                  <div class="col-md-6 col-sm-6  form-group has-feedback">
                    <input type="text" class="form-control" id="inputSuccess5" placeholder="연락처">
                    <span class="fa fa-phone form-control-feedback right" aria-hidden="true"></span>
                  </div>

                  <div class="col-md-6 col-sm-6  form-group has-feedback">
                    <input type="text" class="form-control has-feedback-left" id="inputSuccess2" placeholder="직급">
                    <span class="fa fa-smile-o form-control-feedback left" aria-hidden="true"></span>
                  </div>

                  <div class="col-md-6 col-sm-6  form-group has-feedback">
                    <select class="select2_single form-control" tabindex="-1">
                      <option></option>
                      <option value="AK">비즈니스1급</option>
                      <option value="HI">일못함</option>
                      <option value="CA">성격더러움</option>
                    </select>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-diy" style="color: white;">추가</button>
              </div>
            </div>
          </div>
        </div>

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