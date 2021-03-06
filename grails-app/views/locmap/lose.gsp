<%@ page import="jk.Locmap" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <meta name="layout" content="top" />

        <g:set var="entityName" value="${message(code: 'map.label', default: 'Map')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
		<style TYPE="text/css">
		<!--
		
		div {
		width: 800px;
		height: 200px;
		}
		
		body{
		margin:0;
		padding:0;
		overflow-y: hidden;
		overflow-x: hidden;
		}

		#wrapper{
		width:100%;
		margin:0 auto 0 auto;
		padding:0;
		}

		#header{
		height:200px;
		margin:0;
		padding:0;
		background-color:#000;
		color:#fff;
		border:5px ridge #CCCCCC;
		text-align:center;
		position: relative;
		top:0px;
		left:220px;
		}

		#contents{
		width:100%;
		margin:0;
		padding:0;
		
		}

		#footer{
		height:100px;
		margin:0;
		padding:0;
		background-color:#000;
		border:10px ridge #CCCCCC;
		position: relative;
		text-align:center;
	    top:50px;
	    left:220px;
		border:ridge 5px; 
		}
		
		#hidari{
			position: relative;
		    bottom:0px;
		    left:-300px;
			text-align:center;
		}
		#naka{
			position: relative;
		    bottom:200px;
		    left:200px;
			text-align:center;
		}
		
		#migi{
			position: relative;
		    bottom:400px;
		    left:700px;
			text-align:center;
		}
		
		#owari{
			position: relative;
			text-align:center;
	    	top:50px;
	    	left:500px;
		}

		p{
		margin:0;
		padding:10px;
		color:white;
		font-size:30px;
		}
		
		.moji{
			font-size:20;
			color:#fff;
		}
		
		.moji2{
			font-weight: bold;
			font-size:40;
			color:white;
		}

		h1 {
			color:fff;
			font-size:40;
		}
		
		input, select, textarea {
			background-color:#FCFCFC;
			border:5px ridge #CCCCCC;
			font:30px verdana,arial,helvetica,sans-serif;
			margin:2px 0;
			padding:2px 4px;
			background-color: #ffffff;         /* 背景色 */
		}
		
	
		-->
		</style>
    </head>
	<body leftmargin="0" topmargin="0">
			<img src="/jk/images/lose.jpg" width="1520px" height="820px" style="position:absolute; top:0px; left:0px; z-index:1">
			<div style="position:absolute; top:10px; left:0px; z-index:2; width:100%">
<g:form action="home" controller="locmap" method="post" >
	<%
	int hande1 = 0
	int hande2 = 0
	if(params.int('hande') >= 0){
		
			hande1 =  params.int('hande')
			}else{
			hande2 =  params.int('hande') * (-1)	
			}
	%>
<div id="wrapper">
<div id="header">
				<span class="moji2">（自分）${accountInstance.name} 対（相手）${accountInstance2.name}</span><br>
				<span class="moji2">（自分）HP${params.hantei1}<font size="5" color="red">+10+${hande1}</font><br> 対<br>（相手）HP${params.hantei2}
				<font size="5" color="red">+${hande2}</font></span>
</div>
<div id="contents">	
		<div id="hidari">
				<span class="moji" style="font-size:50;font-weight:bold;color:blue;">LOSER</span><br>
				<font size="5" color="white">（自分）${accountInstance.name}</font><br>
				<img src="/jk/images/${accountInstance.animal.img}" alt="Grails" border="10" ridge #0000ff; /><br>
				<span class="moji">（自分）HP${params.hantei1}<font color="red">+${hande1}</font><font color="red">+10</font></span><br>
		</div>
				
		<div id="naka">
				<span class="moji" style="font-size:100;font-weight:bold;">あなたの<br>負けです</span><br>
		</div>	
		
		<div id="migi">
				<span class="moji" style="font-size:50;font-weight:bold;color:red;">WINNER</span><br>
				<font size="5" color="white">（相手）${accountInstance2.name}</font><br>
				<img src="/jk/images/${accountInstance2.animal.img}" alt="Grails" border="10" ridge; /><br>
				<span class="moji">（相手）HP${params.hantei2}<font size="5" color="red">+${hande2}</font></span><br>
		</div>
			
</div>
<div id="footer">
		<p>${accountInstance2.name}(${accountInstance2.animal.name})に負けました、肉を奪われました</p>

		<g:hiddenField name="id" value="${accountInstance.id}"/>
		<g:hiddenField name="enemyId" value="${accountInstance2.id}"/>
		<g:hiddenField name="hande" value="${params.hande}" />
</div>

<div id="owari">
<span class="button" style="position: relative;"><g:submitButton name="home" value="${message(code: 'default.button.home.label', default: 'Create')}" /></span>
</div>
	</g:form>

	</div>	
</div>
</body>
</html>
