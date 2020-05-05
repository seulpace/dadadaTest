<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
      #enrollForm>table{width:100%;}
      #enrollForm>table *{ margin:5px;}
      .form-notice {
            /* display: block; */
            width: 600px;
            height: calc(1.5em + .75rem + 2px);
            padding: .375rem .75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
        .btn-success {
          margin-left: 180px;
        }
          
  </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">

            <div class="page-title">
              <div class="title_left">
                <h3>공지사항 <small>상세조회|수정하기</small></h3>
              </div>


            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">

<!-- 여기부터 -->
                  <!-- <div class="x_title">
                    <h2>                  
                      <div class="col-md-12 col-sm-12  form-group">
                      <input type="text" placeholder="공지사항제목수정부분" class="form-control">
                      </div>
                    </h2>
                    <small>작성자 : </small>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    <br>
                    <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage">
                    <br>
                    <br>
                    <br>
                    <textarea class="form-control" rows="3" placeholder="공지사항 내용 작성" style="margin-top: 0px; margin-bottom: 0px; height: 106px;"></textarea> -->
<!-- 여기까지 -->
<form id="updateForm" method="post" action="" enctype="">
                      <table align="center">
                        <tr>
                            <th><label for="title" style="margin-right:60px ;">제목</label></th>
                            <td><input type="text" id="title" class="form-notice" name="" required></td>
                        </tr>
                        <tr>
                            <th><label for="writer">작성자</label></th>
                            <td><h5>${ loginUser.userId }</h5></td>
                        </tr>
                        <tr>
                            <th><label for="upfile">첨부파일</label></th>
                            <td><input type="file" id="upfile" class="form-control-file border" name=""></td>
                        </tr>
                        <br>
                        <tr>
                            <th colspan="5"><label for="content">내용</label></th>
                        </tr>
                        <tr>
                            <th colspan="5"><textarea class="form-control" required name="" id="content" rows="10" style="resize:none;"></textarea></th>
                        </tr>
                      </table>





                    
                    
                    <br>
                    <div class="item form-group">
                      <div class="col-md-6 col-sm-6 offset-md-3">
                        <button class="btn btn-success" type="button">수정하기</button>
                      </div>
                    </div>
</form>                  
                    
                  </div>


                </div>
              </div>
            </div>
          </div>
        </div>



	<jsp:include page="../common/footer.jsp"/>
</body>
</html>