<%@ page import="jk.Locmap" %>
<html>
    <head>
            <meta name="layout" content="top" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <g:set var="entityName" value="${message(code: 'map.label', default: 'Map')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
			<style TYPE="text/css">
			<!--
			div {
			width: 800px;
			height: 200px;
			}
			
			#wrapper{
			width:100%;
			margin:0 auto 0 auto;
			padding:0;
			background-color:#ffffff;
		
			}

			#header{
			height:150px;
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
			background-color:#f0f8ff;
		
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
				text-align:left;
		    	top:0px;
		    	left:200px;
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
				font:20px verdana,arial,helvetica,sans-serif;
				margin:2px 0;
				padding:2px 4px;
				background-color: #ffffff;         /* 背景色 */
			}


			-->
			</style>
    </head>
	<BODY leftmargin="0" topmargin="0">
			<img src="/jk/images/${accountInstance2.animal.encountimg}" width="100%" height="100%"
							style="position:absolute; top:0px; left:0px; z-index:1">
							
	<DIV style="position:absolute; top:10px; left:10px; z-index:2">

	
    <g:form action="kekka" method="post" >
<center>	<span class="moji2">${accountInstance2.name}(${accountInstance2.animal.name})と遭遇しました!!</span></center>



		<g:hiddenField name="myId" value="${accountInstance.id}"/>
		<g:hiddenField name="enemyId" value="${accountInstance2.id}"/>
		<g:hiddenField name="hako" value="${hako}"/>
		<g:hiddenField name="hande" value="${hande}"/>
		<g:hiddenField name="hantei1" value="${hantei1}"/>
		<g:hiddenField name="hantei2" value="${hantei2}"/>
<div id="owari">
		<span class="button"><g:submitButton name="create" value="${message(code: 'default.button.battle.label', default: 'Create')}" /></span>
</div>
	

</g:form>
</div>
    </body>
</html>
