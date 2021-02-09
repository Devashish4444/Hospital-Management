<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Hospital</title>
        	<meta charset="UTF-8">
        	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        	<META Http-Equiv="Cache-Control" Content="no-store"/>
			<META Http-Equiv="Pragma" Content="no-cache"/>
			<META Http-Equiv="Expires" Content="0"/>
		<script type="text/javascript" src="resource/js/angular_v1.6.0.js"></script>
			<script type="text/javascript" src="resource/js/backNoWork.js"></script>	
        <link rel="stylesheet" type="text/css" href="Resources/Styles/indexstyles.css">
      
    </head>
    <body>
        
 <div <%@ include file="header.html" %>> </div>
         <!-- this code clears the cache of your browser and also kills the session -->
        <%
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-store, must-revalidate");
            response.setHeader("Expires", "0");
            response.setDateHeader("Expires", -1);
            session.invalidate();
        %>
        <main>            
            <div class="homeDescriptionContainer">
                <h2 id="welcome"> Welcome!!</h2>
			<div class="imageContainer">
					<img src="Resources/Images/hospital1.png" alt="hospital"/>
                </div> 
				<div id="content">
				<h3>You are Successfully Logged Out!! Please Login back to Continue</h3>
                </div>
			</div>
        </main> 
        
        <div <%@ include file="footer.html" %>></div>
    </body>
</html>
