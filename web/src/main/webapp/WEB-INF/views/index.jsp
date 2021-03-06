<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:eval expression="@propertyConfigurer.getProperty('url.cdn')" var="cdnUrl" />
<!DOCTYPE html>
<html lang="${language}">
<head>
    <meta charset="UTF-8">
    <title><spring:message code="voj.index.title" text="Home" /> | ${websiteName}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${description}">
    <meta name="author" content="谢浩哲">
    <!-- Icon -->
    <link href="${cdnUrl}/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <!-- StyleSheets -->
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/misc/homepage.css" />
    <!-- JavaScript -->
    <script type="text/javascript" src="${cdnUrl}/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${cdnUrl}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${cdnUrl}/js/md5.min.js"></script>
    <!--[if lte IE 9]>
        <script type="text/javascript" src="${cdnUrl}/js/jquery.placeholder.min.js"></script>
    <![endif]-->
    <!--[if lte IE 7]>
        <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <!--[if lte IE 6]>
        <script type="text/javascript"> 
            window.location.href='<c:url value="/not-supported" />';
        </script>
    <![endif]-->
</head>
<body>
    <!-- Header -->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!-- Content -->
    <div id="content">
        <div id="introduction" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#introduction" data-slide-to="0" class="active"></li>
                <li data-target="#introduction" data-slide-to="1"></li>
                <li data-target="#introduction" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="active item first"></div>
                <div class="item second"></div>
                <div class="item third"></div>
            </div>
        </div> <!-- #introduction -->
        <div id="slogan" class="row-fluid">
            <div class="container">
                <div class="span5 offset7">
                    <h2><spring:message code="voj.index.slogan" text="Start Your OJ Journey Today!" /></h2>
                    <c:choose>
                    <c:when test="${!isLogin}">
                        <p><button class="btn btn-success" onclick="window.location.href='<c:url value="/accounts/register" />'"><spring:message code="voj.index.create-account" text="Create Account" /></button></p>
                        <p><a href="<c:url value="/accounts/login" />"><spring:message code="voj.index.login" text="Sign In" /></a></p>
                    </c:when>
                    <c:otherwise>
                        <p><button class="btn btn-success" onclick="window.location.href='<c:url value="/p" />'"><spring:message code="voj.index.get-started" text="Get Started Now" /></button></p>
                    </c:otherwise>
                    </c:choose>
                </div> <!-- .span6 -->
            </div> <!-- .container -->
        </div> <!-- #slogan -->
        <div class="row-fluid container">
            <div id="main-content" class="span8">
                <div id="contests">
                    <table class="table">
                        <tbody>
                            <tr class="contest Live">
                                <td class="overview">
                                    <h5><a href="#">Contest Demo</a></h5>
                                    <ul class="inline">
                                        <li>ACM</li>
                                        <li><spring:message code="voj.index.start-time" text="Start Time" />: 2015/05/07 22:00</li>
                                        <li><spring:message code="voj.index.end-time" text="End Time" />: 2015/05/08 0:00</li>
                                    </ul>
                                </td>
                                <td class="status">Live</td>
                            </tr>
                        </tbody>
                    </table>
                </div> <!-- #contests -->
                <div id="discussion">
                    <table class="table">
                        <tbody>
                            <tr class="discussion-threads">
                                <td class="avatar">
                                    <img src="${cdnUrl}/img/avatar.jpg" alt="avatar" />
                                </td>
                                <td class="overview">
                                    <h5><a href="#">Discussion Threads Demo</a></h5>
                                    <ul class="inline">
                                        <li><spring:message code="voj.index.author" text="Author" />: <a href="#">zjhzxhz</a></li>
                                        <li><spring:message code="voj.index.posted-in" text="Posted in" />: <a href="#">Forum #1</a></li>
                                        <li><spring:message code="voj.index.latest-reply" text="Latest reply" />: <a href="#">voj-tester</a> @6 hours ago</li>
                                    </ul>
                                </td>
                                <td class="reply-count">0</td>
                            </tr>
                        </tbody>
                    </table>
                </div> <!-- #discussion -->
            </div> <!-- #main-content -->
            <div id="sidebar" class="span4">
                <div id="bulletin-board" class="widget">
                    <h4><spring:message code="voj.index.bulletin-board" text="Bulletin Board" /></h4>
                    <p><spring:message code="voj.index.no-notification" text="No notification now." /></p>
                </div> <!-- #kanban -->
            </div> <!-- #sidebar -->
        </div> <!-- .row-fluid -->
    </div> <!-- #content -->
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- Java Script -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="${cdnUrl}/js/site.js"></script>
    <script type="text/javascript">
        $(function() {
            $('.carousel').carousel({
                interval: 5000
            });
        });
    </script>
    <script type="text/javascript">
        $(function() {
            var isUpgradeBrowserShown = $('#upgrade-browser').is(':visible'),
                upgradeBrowserHeight  = $('#upgrade-browser').outerHeight();

            if ( isUpgradeBrowserShown ) {
                $('#header').css('top', upgradeBrowserHeight);
                $('#content').css('margin-top', upgradeBrowserHeight);
            }
        });
    </script>
    <script type="text/javascript">
        $('.btn-danger', '#upgrade-browser').click(function() {
            $('#header').css('top', 0);
            $('#content').css('margin-top', 0);
        });
    </script>
    <c:if test="${GoogleAnalyticsCode != ''}">
    ${googleAnalyticsCode}
    </c:if>
</body>
</html>