<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Local Community Church</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/prayer.css">
        <link rel="stylesheet" href="css/pagination.css">
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="active" value="prayer"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="main-wrapper">
                        <div class="left-col col-9">
                            <div class="intro-prayer">
                                <div class="intro-prayer__title text-element-header">
                                    ${info.introTitle}
                                </div>
                                <div class="intro-prayer__content">
                                    ${info.introContent}
                                </div>
                            </div>
                            <div class="list-prayer">
                                <c:forEach items="${listPrayer}" var="lp">
                                    <div class="prayer-item">
                                        <div class="prayer__title text-element-header">
                                            <a class="prayer__link" href="detail?id=${lp.id}">${lp.title}</a>
                                        </div>
                                        <p class="prayer__content">
                                            <img class="prayer__img default-image" src="img/${lp.photoPath}">
                                            ${lp.description}
                                        </p>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="pagination">
                                ${pagination}
                            </div>
                        </div>
                        <%@include file="sharing.jsp"%>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
