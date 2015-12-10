<%-- 
    Document   : index
    Created on : Dec 1, 2015, 3:39:10 PM
    Author     : Omal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<%
	String pushStatus = "";
	Object pushStatusObj = request.getAttribute("pushStatus");

	if (pushStatusObj != null) {
		pushStatus = pushStatusObj.toString();
	}
%>
<head>
<title>Google Cloud Messaging (GCM) Server in PHP</title>
</head>
<body>

	<h1>Google Cloud Messaging (GCM) Server in Java</h1>

	<form action="GCMNotification" method="post">

		<div>
			<textarea rows="2" name="message" cols="23"
				placeholder="Message to transmit via GCM"></textarea>
		</div>
		<div>
			<input type="submit" value="Send Push Notification via GCM" />
		</div>
	</form>
	<p>
		<h3>
			<%=pushStatus%>
		</h3>
	</p>
</body>
</html>
