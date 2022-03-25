<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- tiles 관련 태그를 제공하는 태그 라이브러리 포함 --%>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상추슈퍼 - 중고거래는 상추슈퍼~!</title>
<link rel="stylesheet" href="<c:url value="css/default.css" />" type="text/css">
</head>
<body>
	<div id="content">
		<%-- insertAttribute 태그 : Tiles Configuration File의 put-attribute 엘리먼트로 설정한 
		JSP 문서의 실행결과를 삽입하는 태그 --%>
		<%-- name 속성 : put-attribute 엘리먼트의 식별자를 속성값으로 설정 --%>
		<tiles:insertAttribute name="content"/>
	</div>
</body>
</html>