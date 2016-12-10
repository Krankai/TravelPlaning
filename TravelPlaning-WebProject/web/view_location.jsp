<%-- 
    Document   : view_location
    Created on : Dec 4, 2016, 10:23:12 AM
    Author     : CREAT10N
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Location Page</title>
        <link rel="stylesheet" href="assets/et-line-font-plugin/style.css">
        <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
        <link rel="stylesheet" href="assets/animate.css/animate.min.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <style>
            *{
                margin: 0px auto;
                padding: 0px;
                box-sizing: border-box;
            }

            #location{
                margin-top: 7%;
                width: 1000px;
                height: auto;
            }

            /*Location name*/
            #title{
                width: 100%;
                height: 50px;
                font-size: 36px;
                margin-bottom: 2%;
            }

            /*Location pic*/
            #picture{
                text-align: center;
                width: 100%;
                height: 350px;
                float: left;
            }

            /*Location info*/
            #info{
                width: 80%;
                margin: 0 auto;
            }

            /*Each of location info*/
            li{
                padding-top: 3%; 
                padding-bottom: 3%; 
                width: 33%;
                float: left;
            }

            /*Location rated star*/
            #rated{
                margin-top: 3%;
                margin-bottom: 3%;
            }

            /*Location description*/
            #description{
                margin-bottom: 10%;
            }

            br{
                clear: both;
            }

            #comment{
                width: 1000px;
                height: auto;
            }

            /*Comment avatar*/
            .comment-avatar{
                float: left;
                width: 150px;
                text-align: center;
            }
            
            /*Comment description*/
            .comment-desc{
                float: left;
                width: 600px;
            }

            /*Show location star rating*/
            /*Empty star*/
            .star-ratings-sprite {
                background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/2605/star-rating-sprite.png") repeat-x;
                font-size: 0;
                height: 21px;
                line-height: 0;
                overflow: hidden;
                text-indent: -999em;
                width: 110px;
                margin: 0 auto;
            }

            /*Filled star*/
            .star-ratings-sprite-rating {
                background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/2605/star-rating-sprite.png") repeat-x;
                background-position: 0 100%;
                float: left;
                height: 21px;
                display: block;
            }

        </style>
    </head>
    <body>
        <jsp:include page="_header.jsp" flush="true"/>

        <div class="container" id="location">
            
            <!--Name of the location-->
            <div id="title">
                Travel Location
            </div>

            <!--Picture of the location-->
            <div id="picture">
                <img src="img/PicforBackgroundWLCpage/slide1.jpg" class="img-responsive" width="100%" height="350px"/>
            </div>

            <!--Some information of the location-->
            <div id="info">
                <ul>
                    <li>Type</li>
                    <li>Provider</li>
                    <li>Country</li>
                    <br>
                    <li>City</li>
                    <li>Price</li>
                </ul>
            </div><br>

            <!--Star rating of the location-->
            <div id="rated">
                <div class="star-ratings-sprite">
                    <span style="width:50%" class="star-ratings-sprite-rating"></span>
                </div>
            </div>
            
            <!--Brief description of the location-->
            <div id="description">
                <p>Brief Description</p>
                <hr>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                    when an unknown printer took a galley of type and scrambled it to make a type 
                    specimen book. It has survived not only five centuries, but also the leap into 
                    electronic typesetting, remaining essentially unchanged. It was popularised in 
                    the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
                    and more recently with desktop publishing software like Aldus PageMaker including 
                    versions of Lorem Ipsum
                </p>
            </div>
        </div>

        <div class="container" id="comment">
            <p>Comment</p>
            <hr>
            
            <!--Using for loop to show 3 highest rated comments-->
            <%for (int i = 0; i < 3; i++) {%>
            
            <!--User avatar-->
            <div class="comment-avatar">
                <img src="img/twitter.png" class="img-circle" width="75px" height="75px"/>
            </div>
            
            <!--User's comment description-->
            <div class="comment-desc">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                when an unknown printer took a galley of type and scrambled it to make a type 
                specimen book. It has survived not only five centuries, but also the leap into 
                electronic typesetting, remaining essentially unchanged. It was popularised in 
                the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
                and more recently with desktop publishing software like Aldus PageMaker including 
                versions of Lorem Ipsum
            </div>
            
            <!--User's comment rated-->
            <div class="comment-rate">
                <div class="star-ratings-sprite">
                    <span style="width:50%" class="star-ratings-sprite-rating"></span>
                </div>
            </div><br>
            <hr>
            <% }%>

        </div>
            
        <jsp:include page="_footer.jsp" flush="true"/>
    </body>
</html>