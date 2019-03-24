<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Local Community Church</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="active" value="home"/>
            </jsp:include>
        <div class="main">
            <div class="alignment">
                <div class="main-wrapper">
                    <div class="left-col col-9">
                        <div class="intro-img">
                            <img class="default-image" src="img/${info.introImage}">
                        </div>
                        <div class="welcome">
                            <div class="welcome__title text-section-header">
                                ${info.introTitle}
                            </div>
                            <div class="welcome__description">
                                ${info.introContent}
                            </div>
                        </div>
                        <div class="about-church">
                            <div class="about-church__title text-section-header">
                                <a class="about-church__link" href="detail?id=${prayer.id}">${prayer.title}</a>
                            </div>
                            <p class="about-church__content">
                                <img class="about-church__img default-image" src="img/${prayer.photoPath}">
                                ${prayer.description}
                            </p>
                        </div>
                        <div class="author">
                            <div class="author__image col-4">
                                <img class="default-image" src="img/${info.authorAvatar}">
                            </div>
                            <div class="author__signature col-8">
                                <div class="signature__regard">
                                    Kind Regards
                                </div>
                                <div class="signature__pastor text-section-header">
                                    ${info.authorName}
                                </div>
                            </div>
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
