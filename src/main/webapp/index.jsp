<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IBM Code Day 2018</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .box{
    display:none;
    }
    </style>
</head>
<body>
<div class="container-fluid" style="padding-left:0px;padding-right:0px"> 
		<img src="images/ibmcodedaybanner.png" width="100%">
		<div class="col-md-8 col-xs-12 col-sm-12 col-md-offset-2">
			<center><h2>IBM Code Day 2018</h2></center>
			<form method="POST" action="SimpleServlet">
				<div class="form-group">
									<br/>
									<br/>
									<b><span style="color:#FF0000">*</span>First Name:</b>
									<input type="text" class="form-control input-sm"
										id="fname" name="fname" placeholder="Please enter your first name"
										 required>
									<br/>
									
									<b><span style="color:#FF0000">*</span>Last Name:</b>
									<input type="text" class="form-control input-sm"
										id="lname" name="lname" placeholder="Please enter last name"
										 required>
									<br/>
									
									<b><span style="color:#FF0000">*</span>Email ID:</b>
									<input type="email" class="form-control input-sm"
										id="emailid" name="emailid" placeholder="Please enter your email id" required>
									<br/>
									<b><span style="color:#FF0000">*</span>Session:</b>
      										<select class="form-control" id="session" name="session">
        									<option name="CommandyourMicroservicesFleettosuccesswithKubernetes">Command your Microservices Fleet to success with Kubernetes</option>
        									<option name="CreateaCognitiveBankingChatbot">Create a Cognitive Banking Chatbot</option>
        									<option name="CreateanddeploypredictivescoringmodelwithIBMCloudandDataScienceExperience">Create and deploy predictive scoring model with IBM Cloud and Data Science Experience</option>
      										</select>
										 
									<br/>
									<div class="checkbox">
    								<label>
      								<input type="checkbox" name="interested" value="Yes" checked>&nbsp;IBM leverages the services of Pearson VUE's Acclaim service (a 3rd party) to assist in the administration of the IBM Open Badge program.  In order to issue you an IBM Open Badge, your name, email address and badge earned will be shared with Pearson VUE Acclaim, who will treat your details in a manner consistent with IBM's policies.  You will receive notification from Acclaim at which point you will have the option to accept the badge. 
   									 </label>
 									 </div>
									</div>
									<br/>
									<div class="col-md-6 col-md-offset-3">
									<input type="submit" class="btn btn-primary btn-lg btn-block"
										 value="Submit">
									<br/>
								</div>	
							
			</form>
		</div>
		
	</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>