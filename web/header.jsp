<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
    <div class="alignment">
        <div class="header-wrapper">
            <div class="header__banner">
                <img class="header__image" src="img/home/book.png">
            </div>
            <div class="header__heading">
                <div class="header__title">
                    Local Community Church
                </div>
                <div class="header__subtitle">
                    Welcome to our website
                </div>
            </div>
        </div>
        <div class="navigation">
            <ul class="navigation__list">
                <c:choose>
                    <c:when test="${param.active == 'home'}">
                        <li class="navigation__item"><a class="navigation__link navigation__link--active" href="home">Home</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="prayer">Prayer</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="service">Services</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="contact">Contact and Location</a></li>
                        </c:when>
                        <c:when test="${param.active == 'prayer'}">
                        <li class="navigation__item"><a class="navigation__link" href="home">Home</a></li>
                        <li class="navigation__item"><a class="navigation__link  navigation__link--active" href="prayer">Prayer</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="service">Services</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="contact">Contact and Location</a></li>
                        </c:when>
                        <c:when test="${param.active == 'service'}">
                        <li class="navigation__item"><a class="navigation__link" href="home">Home</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="prayer">Prayer</a></li>
                        <li class="navigation__item"><a class="navigation__link  navigation__link--active" href="service">Services</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="contact">Contact and Location</a></li>
                        </c:when>
                        <c:when test="${param.active == 'contact'}">
                        <li class="navigation__item"><a class="navigation__link" href="home">Home</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="prayer">Prayer</a></li>
                        <li class="navigation__item"><a class="navigation__link" href="service">Services</a></li>
                        <li class="navigation__item"><a class="navigation__link  navigation__link--active" href="contact">Contact and Location</a></li>
                        </c:when>
                    </c:choose>
            </ul>
        </div>
    </div>
</div>
