<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <section class="page-section">
            <div class="container">
                 <!-- row -->
                 <div class="row mt-5 mb-5">
                        <div class="col-xl-9 mx-auto">
                          <h3 class="text-center ">會員資料修改</h3>
                            <div class="">
                                <form class="mt-5" action="#" method="POST">
                                	<div class="form-group row">
                                    	<label for="" class="col-sm-3 col-form-label">會員編號</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="memid" value="${memberId}" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                    	<label for="" class="col-sm-3 col-form-label">帳號</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="memaccount" value="${account}" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label">姓名</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="memname" value="${memberName}" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label">密碼</label>
                                        <div class="col-sm-9">
                                        <input type="password" class="form-control" id="pwd" value="${password}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                        <input type="email" class="form-control" id="email" value="${email}">
                                        </div>
                                    </div>
            							
                                    <div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label" id="memgender">性別</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="memgender" value="${gender}" disabled>  
                                        </div>
                                    </div>
									
									<div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label" id="membirthday">生日</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="membirthday" value="${birthday}" disabled>  
                                        </div>
                                    </div>
									
                                    <div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label">電話號碼</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="tel" value="${phoneNumber}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="" class="col-sm-3 col-form-label">地址</label>
                                        <div class="col-sm-9">
                                        <input type="text" class="form-control" id="address"  value="${address}">
                                        </div>
                                    </div>
      
                                    <div class="form-group row mt-3">
                                        <div class="col-sm-9 offset-sm-3">
                                            <button class="blue-btn text-white w-100" onclick="Update()">修改</button>    
                                        </div>
                                    </div>
      
                                </form>
      
                            </div>
                        </div><!-- row end-->
      				
                </div>
            </div>
          </section>
 
  <!--js///////////-->
  <script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script>

  
  
  /*
  $(document).ready(function(){
		$.get("category.do",show);
	});
  
  function QuerybyId(obj) {
		$.post("updateFM.do", {
			"memberId" : obj.id}, show)

		}
	*/

	// 換頁功能未能正常執行
	// 未能顯示變更後的內容
	  
	  function Update(){
			var memId=$("#memid").val();
	//		var memAccount=$("#memaccount").val();
			var memName=$("#memname").val();
			var memPwd=$("#pwd").val();
			var memGender=$("#memgender").val();
			var memBirthday=$("#membirthday").val();
			var memEmail=$("#email").val();
			var memAddress=$("#address").val();
			var memPhoneNumber=$("#tel").val();
			$.post("updateFM.do", {"memId":memId, 
		//														"account":memAccount, 
																	"memName":memName, 
																"memPwd":memPwd, 
																	"memGender":memGender, 
																		"memBirthday":memBirthday, 
																"memEmail":memEmail, 
																		"memAddress":memAddress, 
																			"memPhoneNumber":memPhoneNumber},				
												document.location.href="/CakeShop/shop.html"
													);}
	
		
  </script>
  