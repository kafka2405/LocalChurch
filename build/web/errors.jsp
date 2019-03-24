<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Local Community Church</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/errors.css">
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
                            <div class="errors-title text-section-header">
                                Something went wrong
                            </div>

                            <div class="error-subtitle text-element-header">
                                Sorrry for this incovenience. Please try again later!
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
