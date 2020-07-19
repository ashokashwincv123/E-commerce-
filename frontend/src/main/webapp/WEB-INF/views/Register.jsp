<%@include file="Header.jsp"%>
<form action="registerUser" method="post" id="registerform" class="form-horizontal" role="form">
<div class="container">    
        <div style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title" align="center"><b>Sign Up</b></div>
                        <hr>
            			<div style="margin-bottom: 25px" class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    						<input id="fullname" type="text" class="form-control" name="customerName" value="" placeholder="fullname" required>
			    		</div>
			    
			    		<div style="margin-bottom: 25px" class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    						<input id="username" type="text" class="form-control" name="userName" value="" placeholder="username" required>
			    		</div>
			    		
			    		<div style="margin-bottom: 25px" class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    						<input id="password" type="password" class="form-control" name="password" value="" placeholder="password" 
    						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
    						required >
    						
			    		</div>
			    		
			    		<div style="margin-bottom: 25px" class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
    						<input id="email" type="text" class="form-control" name="emailID" value="" placeholder="email" 
    						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Must contain name@domain.com" required>
			    		</div>
			    		
			    		<div style="margin-bottom: 25px" class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    						<input id="phone" type="text" class="form-control" name="mobileNo" value="" placeholder="phone number" 
    						pattern="[0-9]{10}" title="phone number must in 10 digit"required>
			    		</div>
			    		
			    		<div style="margin-top:10px" class="form-group" align="center">
                        	<div class="col-sm-12 controls">
                            	<input type="submit" class="btn btn-info" value="Submit">
                            	<input type="reset" class="btn btn-info" value="Reset">
                        	</div>
                        </div>
			   </div>
			   </div>
			   </div>
			   </div>
</form>
<%@include file="Footer.jsp"%>

