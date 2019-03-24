<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Local Community Church</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/contact.css">
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="active" value="contact"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="main-wrapper">
                        <div class="left-col col-9">
                            <div class="contact-page-title text-section-header">
                                Contact and Location
                            </div>
                            <div class="contact-wrapper">
                                <div class="church-name text-element-header">
                                    Local Church Community
                                </div>
                                <div class="address">
                                    <div class="address__left col-2">
                                        Address:
                                    </div>
                                    <div class="address__right col-10">
                                        ${contact.address}
                                    </div>
                                </div>
                                <div class="address">
                                    <div class="address__left col-2">
                                        City:
                                    </div>
                                    <div class="address__right col-10">
                                        ${contact.city}
                                    </div>
                                </div>
                                <div class="address">
                                    <div class="address__left col-2">
                                        Country:
                                    </div>
                                    <div class="address__right col-10">
                                        ${contact.country}
                                    </div>
                                </div>

                                <div class="tel-email">
                                    <div class="tel-email__left col-2">
                                        Email:
                                    </div>
                                    <div class="tel-email__right col-10">
                                        ${contact.email}
                                    </div>
                                </div>

                                <div class="tel-email">
                                    <div class="tel-email__left col-2">
                                        Telephone:
                                    </div>
                                    <div class="tel-email__right col-10">
                                        ${contact.tel}
                                    </div>
                                </div>
                            </div>
                            <div class="map">
                                <img class="map__image default-image" src="img/${contact.photoPath}">
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
