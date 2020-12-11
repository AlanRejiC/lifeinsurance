<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h1 class="text-center">Forgot Password?</h1>
				</div>
				<div class="modal-body">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="text-center">

									<p>If you have forgotten your password you can reset it
										here.</p>
									<div class="panel-body">
										<fieldset>
											<form:form action="/forgotPassword?password=old" modelAttribute="user" method="post">
												<div class="form-group">
												
													<form:input path="userId" class="form-control input-lg"
														placeholder="User ID" />
													<input class="form-control input-lg"
														placeholder="Old Password" name="old" type="password" />
														
														
													<form:input path="password" class="form-control input-lg"
														placeholder="New Password" name="new" type="text" />
													<form:input path="confirmpassword" class="form-control input-lg"
														placeholder="Confirm Password" name="confirm" type="password" />
												</div>
												<input class="btn btn-lg btn-primary btn-block"
													value="Send My Password" type="submit">
											</form:form>
										</fieldset>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col-md-12">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>