<html>
<head>
<script>
function ajaxres(str)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		 xmlhttp=new XMLHttpRequest();
	 }
	else
	{
		// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    	{
				document.getElementById("dynText").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","ajax_jdbc_res.jsp?name="+str,true);
	xmlhttp.send();
}
</script>
</head>

<body>
<form name="f1" method="get" action="">
<table width="600px" border="2" style="font-family:arial;font-size:14px">
<tr  style="background-color:black; color:white">
	<td colspan="2">Search User</td>
</tr>
<tr>
	<td>Enter Name</td>
	<td><input type="text" name="t1" onkeyup="ajaxres(t1.value)" /> </td>
</tr>
<tr>
	<td colspan="2">
	<div id="dynText"></div></td>
	</td>
</tr>
</table>
</form>
</body>
</html>