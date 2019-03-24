<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Local Community Church</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/service.css">
        <link rel="stylesheet" href="css/pagination.css">
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="active" value="service"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="main-wrapper">
                        <div class="left-col col-9">
                            <div class="service-title text-section-header">
                                Services
                            </div>
                            <div class="list-service">
                                <c:forEach items="${listService}" var="ls">
                                    <div class="service-item">
                                        <div class="service-item__datetime col-3">
                                            ${ls.schedule}
                                        </div>
                                        <div class="service-item__info col-9">
                                            <div class="service-item__title text-element-header">
                                                ${ls.name}
                                            </div>
                                            <div class="service-item__content">
                                                ${ls.description}
                                            </div>
                                        </div>
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
