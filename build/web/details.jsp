<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Local Community Church</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/details.css">
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
                            <div class="prayer-title text-section-header">
                                ${prayer.title}
                            </div>
                            <div class="prayer-details">
                                <p class="prayer-details__content">
                                    <img class="prayer-details__img default-image" src="img/${prayer.photoPath}">
                                    ${prayer.description}
                                </p>
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
