<!--modal duoc goi ra o lop khac nen ko can nam trong the html body, ko can co header-->
<!--goi modal o lop khac su dung thu vien AJAX JQUERY-->
<!-- content -->
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Account" %>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<jsp:include page="layout/css.jsp"/>
	<link rel="stylesheet" href="<%= Asset.url("/template/web/css/profileAccount.css")%>" />
	<!-- Custom StyleSheet -->
	<title>Profile</title>
</head>

<body>
<!-- Navigation -->
<jsp:include page="layout/header.jsp"/>
<%--<div class="modal" id="modalId">--%>
<br />
<br />
<br />
	<div class="container">
		<br />
		<form class="bg-white shadow rounded-lg d-block d-sm-flex" method="post" action="${pageContext.request.contextPath}/user-profile">
			<div class="profile-tab-nav border-right">
				<div class="p-4">
					<div class="img-circle text-center mb-3 file-upload">
						<label for="avatar-input">
							<img src="${account.avatar}" alt="Image" class="shadow" />
						</label>
						<input type="file" accept="image/*" id="avatar-input">
					</div>
					<h4 class="text-center">${account.fullname}</h4>
				</div>
			</div>
			<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
					<h3 class="mb-4">Account Settings</h3>
					<div class="row">

						<div class="col-md-6">
							<div class="form-group">
								<label>User name</label>
								<input type="text" class="form-control" name="user-name" value="${account.username}" disabled>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Full name</label>
								<input type="text" class="form-control" name="full-name" value="${account.fullname}">
							</div>
						</div>


						<div class="col-md-6">
							<div class="form-group">
								<label>Email</label>
								<div class="tooltip">
									<i class="fas fa-check" hidden></i>
									<span class="tooltiptext">Verified</span>
								</div>
								<div class="tooltip">
									<i class="fa fa-exclamation-triangle" aria-hidden="true"
									   onclick="confirmSendMail()"></i>
									<span class="tooltiptext">Please! Click to verify your gmail</span>
								</div>
								<input type="text" class="form-control" name="email" value="${account.email}">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Phone number</label>
								<input type="text" class="form-control" name = "phoneNumber" value="${account.phoneNumber}">
							</div>
						</div>


						<div class="col-md-12">
							<div class="form-group">
								<label for="addressList">Address</label>
								<select class="form-control" name="addressList" id="addressList" style="height: 30px;font-size: 15px;">
									<option value="ad0001">Thôn 10 - Đăk Hring - Đăk Hà - Kon Tum</option>
								</select>
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="description">Description</label>
								<textarea class="form-control" name="description" id="description"
										  rows="4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vero enim error similique quia numquam ullam corporis officia odio repellendus aperiam consequatur laudantium porro voluptatibus, itaque laboriosam veritatis voluptatum distinctio!</textarea>
							</div>
						</div>

					</div>
				</div>
				<div>
					<button class="btn btn-primary" type="submit">Update</button>
					<button class="btn btn-light" type="reset">Reset</button>
				</div>
			</div>
		</form>
	</div>
<%--</div>--%>
<jsp:include page="layout/footer.jsp"/>
<!-- End Footer -->
<script src="<%= Asset.url("/template/web/js/profileAccount.js")%>"></script>
</body>
</html>
