<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css" crossorigin="anonymous"> -->
<!-- <link rel="stylesheet" type="text/css" href="resources/style.css"> -->
<%-- <link href="<c:url value="/resources/style.css" />" rel="stylesheet"/> --%>
<meta charset="ISO-8859-1">

<style type="text/css">

li {
    position: relative !important; 
    padding-block: 5px !important;
}

</style>
<title>Insert title here</title>
</head>
<body>

 <h1>Simple Recorder.js demo</h1>
 <form action="uploadimage" method="post" enctype="multipart/form-data">   
    <div id="controls">    
  	 <button type="button" id="recordButton">Record</button>
  	 <button type="button" id="pauseButton" disabled>Pause</button>
  	 <button type="button" id="stopButton" disabled>Stop</button>
    </div>
    <div id="formats">Format: start recording to see sample rate</div>
  	<p><strong>Recording:</strong></p>
  	<input id='file_input' type="file" name="profile"/>
  	<br>
  	<ul style="list-style-type:none;" id="recordingsList"></ul>
    <!-- inserting these scripts at the end to be able to use all the elements in the DOM -->
  	<script src="resources/js/recorder.js"></script>
  	<script src="resources/js/app.js"></script>
  	
  	<button type="submit" style="margin: 50px;" value="Upload" onclick="return valid();">Upload</button>



</form>

<script type="text/javascript">
function valid() {
	debugger;
	const inputfile = document.querySelector('#file_input');
	if (inputfile.value == "") {
		alert("plz uplod audio")
		return false;
	}
	
}


// var rightNow = new Date();
// var res = rightNow.toISOString().slice(0,10).replace(/-/g,"");


// var ds = (new Date()).toLocaleString().replace(/[^0-9]/g, "");
// alert(ds);
</script>

</body>
</html>
