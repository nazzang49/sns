<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sns</title>
</head>
<body>

<script type="text/javascript">
	if('${joinflag}'=='true'){
		alert("[가입 환영] 메인으로 이동");
	}else{
		alert("[가입 실패] 메인으로 이동");
	}
	location.href="${pageContext.request.contextPath}";
</script>

</body>
</html>