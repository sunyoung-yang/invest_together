<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
	
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <!-- alert -->
  <link rel="stylesheet" href="resources/sb_admin/css/ast-notif.css" />
  <script src="resources/sb_admin/js/ast-notif.js"></script>
  
  <!-- ajax사용 위해 csrf설정 -->
  <meta id="_csrf" name="_csrf" content="${_csrf.token}" />
  <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />

  <title>같이투자</title>

  <!-- Custom fonts for this template -->
  <link href="resources/sb_admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/sb_admin/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="resources/sb_admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">채권</h1>
          <p class="mb-4"> 아래는 채권 현황입니다.</p>

          <!-- DataTales -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">채권 현황</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              
              <form:form id="frm">
              	<button type="button" class="btn btn-outline btn-primary pull-right" name="addRow">추가</button>
              	<button type="button" class="btn btn-outline btn-primary pull-right" name="modify">수정</button>
              	<button type="button" class="btn btn-outline btn-primary pull-right" name="delRow">삭제</button>
              	<button type="button" class="btn btn-outline btn-primary pull-right" id="downloadExel">엑셀파일로 다운</button>
                  
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">               
                  <thead>
                    <tr>
                   	 <th><input type="checkbox" id="checkAll" /></th>
                      <th>종목명</th>
                      <th>세후보유기간이자(%)</th>
                      <th>증권사</th>
                      <th>매수금액(&#8361;)</th>
                      <th>매수일자</th>
                      <th>발행이자율(%)</th> 
                      <th>할인발행율(%)</th>
                      <th>총상환금액(&#8361;)</th>
                      <th>만기일</th>
                      <th>신용등급</th>
                    </tr>
                  </thead>
              
                  <tbody id="bond_tbody"> 
	                  <c:forEach var = "dto" items= "${list}">
		                    <tr id="bondList_${dto.bond_num}">
			                    <td><input type="checkbox" class="checkRow" name="checkRow" data-symbols="${dto.bond_num}" /></td>
			                    <td style="display:none;">${dto.bond_num}</td> <!-- jQuery.Deferred exception의 원인 th, td 컬럼 수가 불일치 -->
			                    <td>${dto.bond_symbols}</td>
			                    <td>${dto.total_interest}</td>
			                    <td>${dto.bond_company}</td>
			                    <td>${dto.bond_price}</td>
			                    <td>${dto.bond_date}</td>
			                    <td>${dto.coupon_interest_rate}</td>
			                    <td>${dto.discount_rate}</td>
			                    <td>${dto.gross_price}</td>
			                    <td>${dto.maturity_date}</td>
			                    <td>${dto.grade}</td>
		                    </tr>
                    </c:forEach>	
                  </tbody>
                </table>                
                </form:form>
              </div>
            </div>
          </div>
         

          
          <!-- table script -->
          <script type="text/javascript">
          
          function alerting(content){
        		AstNotif.dialog('알림', content, {
            	  theme: 'default',
            	});
        	}
          
          function confirming(content){
	      		AstNotif.snackbar(content, {
	          	  theme: 'default',
	          	});
      		}
          
          //날짜 validating
          $(document).on("input","input[name=maturity_date]",function(){
				    var startDate = document.getElementById("bond_date").value;
				    var endDate = document.getElementById("maturity_date").value;
				    
				    if ((Date.parse(startDate) >= Date.parse(endDate))) {
				        alerting("만기일이 매수일자보다 빠른 날짜를 선택하셨습니다.");
				        document.getElementById("maturity_date").value = "";
				    }
			}); 
          
          //특수문자, 공백 validating
           $(document).on("input","input[name=bond_symbols]",function(){
	        	  var bond_symbols = document.getElementById("bond_symbols").value;

 	        	  var pattern1 = /\s/;
	        	  var pattern2 = /[._+=-`~!@#$%^&*|\\\'\";:\/?]/gi;
	        	  
	         	  if(bond_symbols.search(pattern1) != -1 || bond_symbols.search(pattern2) != -1) {
	                  alerting("종목명을 다시 입력해주세요. 공백 및 특수문자는 사용할 수 없습니다.");
	                  document.getElementById("bond_symbols").value = "";
	                  return false;
	               }

          	}); 
          
          //숫자 validating 부동소수점 포함
          $(document).on("input","input[name=total_interest]",function(){
				var total_interest = document.getElementById("total_interest").value;

	        	var num = /^[+]?\d+\.?\d*$/;
	          
		        if(!num.test(total_interest)) {
		        	alerting("세후보유기간이자를 다시 입력해주세요");
		        	document.getElementById("total_interest").value = "";
	                return false;
		        } 
          });
          
          $(document).on("input","input[name=coupon_interest_rate]",function(){
				var coupon_interest_rate = document.getElementById("coupon_interest_rate").value;

	        	var num = /^[+]?\d+\.?\d*$/;     
		        
		        if(!num.test(coupon_interest_rate)) {
	                alerting("발행이자율을 다시 입력해주세요");
	                document.getElementById("coupon_interest_rate").value = "";
	                return false;
	             }
       	 });
          
          $(document).on("input","input[id=discount_rate]",function(){
				var discount_rate = document.getElementById("discount_rate").value;

	        	var num = /^[+]?\d+\.?\d*$/;     

		        if(!num.test(discount_rate)) {
	                alerting("할인이자율을 다시 입력해주세요");
	                document.getElementById("discount_rate").value = "";
	                return false;
	             }
 	     });
          
          
          
        //숫자 validating 정수
          $(document).on("input","input[name=bond_price]",function(){
				var bond_price = document.getElementById("bond_price").value;

	        	var num = /^\d+\.?\d*$/;
	          
		        if(!num.test(bond_price)) {
	                alerting("매수금액을 다시 입력해주세요");
	                document.getElementById("bond_price").value = "";
	                return false;
	             }
          });
        
          $(document).on("input","input[name=gross_price]",function(){
				var gross_price = document.getElementById("gross_price").value;

	        	var num = /^\d+\.?\d*$/;

		        if(!num.test(gross_price)) {
	                alerting("총상환금액을 다시 입력해주세요");
	                document.getElementById("gross_price").value = "";
	                return false;
	             }
        });
          
          

          	//전체선택 
          	$(document).ready(function(){
          	    //최상단 체크박스 클릭
          	    $("#checkAll").click(function(){
          	        //클릭되었으면
          	        if($("#checkAll").prop("checked")){
          	            //input태그의 class가  checkRow인 태그들을 찾아서 checked옵션을 true로 정의
          	            $(".checkRow").prop("checked",true);
          	            //클릭이 안되있으면
          	        }else{
          	            //input태그의 class가  checkRow인 태그들을 찾아서 checked옵션을 false로 정의
          	            $(".checkRow").prop("checked",false);
          	        }
          	    })
          	});
          	
          	//개별 체크박스가 선택되거나 선택해제되면 모두 선택 체크박스가 해체   
          	$(document).ready(function(){
          		$(".checkRow").click(function(){
      			  $("#checkAll").prop("checked", false);
      			 })
          	});
			 
          	
		    //추가 버튼
		    $(document).on("click","button[name=addRow]",function(){
		        
		        var addTableRow =     
		        	'	 <tr id="bondList_${dto.bond_num}">'+
		            '    <td><input type="checkbox" class="checkRow" name="checkRow" data-symbols="${dto.bond_num}" /></td>'+
		            '    <td style="display:none;"><input type="hidden" name="bond_num" value="${dto.bond_num}" /></td>'+
		            '    <td><input type="text" id="bond_symbols" name="bond_symbols" placeholder="종목명" /></td>'+
		            '    <td><input type="text" id="total_interest" name="total_interest" placeholder="세후보유기간이자" /></td>'+
		            '    <td><select id="bond_company" name="bond_company" placeholder="증권사">'+
		            '	 <option value="" disabled selected>증권사</option>'+
		            '	 <option value="한국투자증권">한국투자증권</option>'+
		            '	 <option value="미래에셋대우">미래에셋대우</option>'+
		            '	 <option value="메리츠종금증권">메리츠종금증권</option>'+
		            '	 <option value="NH투자증권">NH투자증권</option>'+
		            '	 <option value="삼성증권">삼성증권</option>'+
		            '	 <option value="신한금융투자">신한금융투자</option>'+
		            '	 <option value="키움증권">키움증권</option>'+
		            '	 <option value="KB증권">KB증권</option>'+
		            '	 <option value="하나금융투자">하나금융투자</option>'+
		            '	 <option value="대신증권">대신증권</option>'+
		            '	 <option value="유안타증권">유안타증권</option>'+
		            '	 </select></td>'+
		            '    <td><input type="text" id="bond_price" name="bond_price" placeholder="매수금액" /></td>'+
		            '    <td><input type="date" id="bond_date" name="bond_date" placeholder="매수일자" /></td>'+
		            '    <td><input type="text" id="coupon_interest_rate" name="coupon_interest_rate" placeholder="발행이자율" /></td>'+
		            '    <td><input type="text" id="discount_rate" name="discount_rate" placeholder="할인발행율" /></td>'+
		            '    <td><input type="text" id="gross_price" name="gross_price" placeholder="총상환금액" /></td>'+
		            '    <td><input type="date" id="maturity_date" name="maturity_date" placeholder="만기일" /></td>'+
		            '    <td><select id="grade" name="grade" placeholder="신용등급">'+
		            '	 <option value="" disabled selected>신용등급</option>'+
		            '	 <option value="AAA">AAA</option>'+
		            '	 <option value="AA">AA</option>'+
		            '	 <option value="A">A</option>'+
		            '	 <option value="BBB">BBB</option>'+
		            '	 <option value="BB">BB</option>'+
		            '	 <option value="B">B</option>'+
		            '	 <option value="CCC">CCC</option>'+
		            '	 <option value="CC">CC</option>'+
		            '	 <option value="C">C</option>'+
		            '	 <option value="D">D</option>'+
		            '	 </select>'+
		            '  	 <button type="button" class="btn btn-outline btn-primary" onclick="insertCheck();">+</button></td>'+
		            '</tr>';
		            
		            $("#bond_tbody").append(addTableRow);
		        
		    });

		    //null check B4 submit
		    function insertCheck(){
		    	
		    	// form안의 모든 text type 조회
		    	var txtEle = $("#frm input[type=text]");
		    	
		    	for(var i = 0; i < txtEle.length; i ++){
		    		if("" == $(txtEle[i]).val() || null == $(txtEle[i]).val()){
			    		var ele_id = $(txtEle[i]).attr("id");
			    		//console.log("id : " + ele_id);
			    		showAlert(ele_id);
			    		return true;
		    		}
		    	}
		    	
		    	//select값 조회
		    	if("" == $("#bond_company option:selected").val() || null == $("#bond_company option:selected").val()){
		    		var ele_id = "bond_company";
		    		showAlert(ele_id);
		    		return true;
	    		}
		    			    	
		    	if("" == $("#grade option:selected").val() || null == $("#grade option:selected").val()){
		    		var ele_id = "grade";
		    		//console.log("id : " + ele_id);
		    		showAlert(ele_id);
		    		return true;
	    		}
		    	
		    		theForm = document.form;
		    		document.getElementById("frm").action = "writeBond";
		    		document.getElementById("frm").submit();
    	
		    }
		    
		    //null check B4 modify
		    function modifyCheck(){
		    	
		    	// form안의 모든 text type 조회
		    	var txtEle = $("#frm input[type=text]");
		    	
		    	for(var i = 0; i < txtEle.length; i ++){
		    		if("" == $(txtEle[i]).val() || null == $(txtEle[i]).val()){
			    		var ele_id = $(txtEle[i]).attr("id");
			    		console.log("id : " + ele_id);
			    		showAlert(ele_id);
			    		return true;
		    		}
		    	}
		    	
		    	//select값 조회
		    	if("" == $("#bond_company option:selected").val() || null == $("#bond_company option:selected").val()){
		    		var ele_id = "bond_company";
		    		showAlert(ele_id);
		    		return true;
	    		}
		    			    	
		    	if("" == $("#grade option:selected").val() || null == $("#grade option:selected").val()){
		    		var ele_id = "grade";
		    		//console.log("id : " + ele_id);
		    		showAlert(ele_id);
		    		return true;
	    		}
		    	
		    		theForm = document.form;
		    		document.getElementById("frm").action = "modifyBond";
		    		document.getElementById("frm").submit();
    	
		    }
		    
		    
		    
		    //null값일 때 focus주기 
		    function showAlert(ele_id){

		    	var ele_name = $("#" + ele_id).attr('placeholder');
		    	alerting(ele_name + "을 입력해주세요.");

		    	// 해당 id에 focus.
		    	$("#" + ele_id).focus();
		    }

		    
		    //삭제 버튼
		    $(document).on("click","button[name=delRow]",function(){
		    	//var confirm_val = confirming("정말 삭제하시겠습니까?");
		    	  
		    	  //if(confirm_val) {
		    	   var checkArr = [];
		    	   
		    	   $("input[class='checkRow']:checked").each(function(){
		    	    checkArr.push($(this).attr("data-symbols"));
		    	   });
		    	    
		    	   $.ajax({
		    	    url : "deleteBond",
		    	    type : "post",
		    	    data : {"checkRow" : checkArr},
		    	    dataType : "json",
		    	    success : function(result){
		    	    		if(result == 1){
		    	    			confirming("삭제했습니다.");
			    	    		setTimeout(function() {
			    	    			window.location.href = "bond";
			    	    			}, 1000);
		    	    		}
		    	    			
		    	    	}
		    	    });
		    	   //}

 	        });
		    
		    //ajax csrf
		    $(document).ready(function(){
			    var token = $("meta[name='_csrf']").attr("content");
			    var header = $("meta[name='_csrf_header']").attr("content");
			    $(document).ajaxSend(function(e, xhr, options) {
			        xhr.setRequestHeader(header, token);
			    });
			});
		    
		    
		  //수정 input박스 띄우기 
			$(document).on("click","button[name=modify]",function(){
				$("input[class='checkRow']:checked").each(function(){
					
					var str = "";
					var tdArr = new Array();
					var checkBtn = $(this);
					var num = $(this).attr("data-symbols");
					console.log(num);
					
					// checkBtn.parent() : checkBtn의 부모는 <td>이다.
		            // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
		            var tr = checkBtn.parent().parent();
		            var td = tr.children();
		            var id = tr.attr('id');
		            console.log("id: "+id);
					
					// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
					console.log("클릭한 row의 모든 데이터: "+tr.text());
					
					
					// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
		            td.each(function(i){
		                tdArr.push(td.eq(i).text());
		            });

					console.log("배열에 담긴 값: "+tdArr);

					str +=     
			            '    <td><input type="checkbox" class="checkRow" name="checkRow" data-symbols="${dto.bond_num}" /></td>'+
			            '    <td style="display:none;"><input type="hidden" name="bond_num" value='+tdArr[1]+' /></td>'+
			            '    <td><input type="text" id="bond_symbols" name="bond_symbols" value='+tdArr[2]+' placeholder='+tdArr[2]+' /></td>'+
			            '    <td><input type="text" id="total_interest" name="total_interest" value='+tdArr[3]+' placeholder='+tdArr[3]+' /></td>'+
			            '    <td><select id="bond_company" name="bond_company" placeholder="bond_company">'+
			            '	 <option value='+tdArr[4]+' selected>'+tdArr[4]+'</option>'+
			            '	 <option value="한국투자증권">한국투자증권</option>'+
			            '	 <option value="미래에셋대우">미래에셋대우</option>'+
			            '	 <option value="메리츠종금증권">메리츠종금증권</option>'+
			            '	 <option value="NH투자증권">NH투자증권</option>'+
			            '	 <option value="삼성증권">삼성증권</option>'+
			            '	 <option value="신한금융투자">신한금융투자</option>'+
			            '	 <option value="키움증권">키움증권</option>'+
			            '	 <option value="KB증권">KB증권</option>'+
			            '	 <option value="하나금융투자">하나금융투자</option>'+
			            '	 <option value="대신증권">대신증권</option>'+
			            '	 <option value="유안타증권">유안타증권</option>'+
			            '	 </select></td>'+
			            '    <td><input type="number" id="bond_price" name="bond_price" value='+tdArr[5]+' placeholder='+tdArr[5]+' /></td>'+
			            '    <td><input type="date" id="bond_date" name="bond_date" value='+tdArr[6]+' placeholder='+tdArr[6]+' /></td>'+
			            '    <td><input type="text" id="coupon_interest_rate" name="coupon_interest_rate" value='+tdArr[7]+' placeholder='+tdArr[7]+' /></td>'+
			            '    <td><input type="text" id="discount_rate" name="discount_rate" value='+tdArr[8]+' placeholder='+tdArr[8]+' /></td>'+
			            '    <td><input type="text" id="gross_price" name="gross_price" value='+tdArr[9]+' placeholder='+tdArr[9]+' /></td>'+
			            '    <td><input type="date" id="maturity_date" name="maturity_date" value='+tdArr[10]+' placeholder='+tdArr[10]+' /></td>'+
			            '    <td><select id="grade" name="grade" placeholder="grade">'+
			            '	 <option value='+tdArr[11]+' selected>'+tdArr[11]+'</option>'+
			            '	 <option value="AAA">AAA</option>'+
			            '	 <option value="AA">AA</option>'+
			            '	 <option value="A">A</option>'+
			            '	 <option value="BBB">BBB</option>'+
			            '	 <option value="BB">BB</option>'+
			            '	 <option value="B">B</option>'+
			            '	 <option value="CCC">CCC</option>'+
			            '	 <option value="CC">CC</option>'+
			            '	 <option value="C">C</option>'+
			            '	 <option value="D">D</option>'+
			            '	 </select>'+
			            '  	 <button type="button" class="btn btn-outline btn-primary" onclick="modifyCheck();">+</button></td>';
					
					$("#"+id).html(str);
		    	   });
				
		        
		    }); 


		  	//ExelExport
		  	$(document).ready(function () {
                $('#downloadExel').on('click', function (e) {
                    console.log("test");
                    e.preventDefault();

                    $('table').tableExport({type:'excel'});

                });
		  	});
		    
		</script>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/sb_admin/vendor/jquery/jquery.min.js"></script>
  <script src="resources/sb_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/sb_admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/sb_admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="resources/sb_admin/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="resources/sb_admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="resources/sb_admin/js/demo/datatables-demo.js"></script>
  
	 <!-- Exel Export -->
	<script type="text/javascript" src="resources/sb_admin/js/FileSaver/FileSaver.min.js"></script>
	<script type="text/javascript" src="resources/sb_admin/js/js-xlsx/xlsx.core.min.js"></script>
	<script type="text/javascript" src="resources/sb_admin/js/tableExport.min.js"></script>

</body>

</html>
    