<!--modal duoc goi ra o lop khac nen ko can nam trong the html body, ko can co header-->
<!--goi modal o lop khac su dung thu vien AJAX JQUERY-->
<!-- content -->
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.controller.web.Asset" %>
<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb.model.Account" %>
<%@ page import="java.util.List" %>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	Account account = (Account) request.getAttribute("account");
%>
<div class="modal" id="modalId">

	<link rel="stylesheet" href="<%= Asset.url("/template/web/css/profileAccount.css")%>" />

	<section class="py-5 md-5">
		<div class="container">

			<br />
			<form class="bg-white shadow rounded-lg d-block d-sm-flex" method="post" action="${pageContext.request.contextPath}/user-profile">

				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3 file-upload">
							<label for="avatar-input">
								<img src="images/user.svg" alt="Image" class="shadow" />
							</label>
							<input type="file" accept="image/*" id="avatar-input">
						</div>
						<h4 class="text-center">${account.fullname}</h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab"
							aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i>
							Account
						</a>
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<a class="close" id="closeId" onclick="clickClose()">&times;</a>
						<h3 class="mb-4">Account Settings</h3>
						<div class="row">

							<div class="col-md-6">
								<div class="form-group">
									<label>User name</label>
									<input type="text" class="form-control" value="${account.username}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Full name</label>
									<input type="text" class="form-control" value="${account.fullname}">
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
									<input type="text" class="form-control" value="${account.email}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Phone number</label>
									<input type="text" class="form-control" value="${account.phoneNumber}">
								</div>
							</div>


							<div class="col-md-12">
								<div class="form-group">
									<label for="addressList">Address</label>
									<select class="form-control" name="addressList" id="addressList" style="height: 30px;font-size: 15px;">
										<option value="ad0001">Thôn 10 - Đăk Hring - Đăk Hà - Kon Tum</option>
										<option value="ad0002">KTX F- Đại học Nông Lâm - khu phố 6 - Linh Trung - TP.Thủ
											Đức
											- TP.Hồ Chí Minh</option>
									</select>
								</div>
							</div>

							<div class="col-md-12">
								<div class="btn btn-outline-success addButtonBtn">Add address</div>
							</div>
							<!--slide-->
							<div class="addButtonSlide">
								<div class="row tab-content p-12 p-md-5" style="margin-left:10px;">
								<!--Country-->
								<div class="col-md-6">
									<div class="form-group">
										<label for="country">Country</label>
										<select class="form-control" name="country" id="country">
											<option value="Vietnam">Vietnam</option>
											<option value="China">China</option>
										</select>
									</div>
								</div>

								<div class="col-md-6">
									<!--Province-->
									<div class="form-group">
										<label for="province">Province</label>
										<select class="form-control" name="province" id="province"></select>
									</div>
								</div>


								<!--District-->
								<div class="col-md-6">
									<div class="form-group">
										<label for="district">District</label>
										<select class="form-control" name="district" id="district"></select>
									</div>
								</div>
								<!--Ward-->
								<div class="col-md-6">
									<div class="form-group">
										<label for="ward">Ward</label>
										<select class="form-control" name="ward" id="ward"></select>
									</div>
								</div>


								<div class="col-md-12">
									<div class="form-group">
										<label for="addressDetail">Address Detail</label>
										<textarea style="width:100%;resize: none;" id="addressDetail"
											name="addressDetail" class="form-control"></textarea>
									</div>
								</div>
							</div>
							</div>
								<!--slide-->

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
	</section>
	<script src="<%= Asset.url("/template/web/js/profileAccount.js")%>"></script>

</div>