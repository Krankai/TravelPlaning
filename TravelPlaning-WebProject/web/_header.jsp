<%-- 
    Document   : _header
    Created on : Nov 17, 2016, 2:08:13 PM
    Author     : krankai
--%>

<%@page import="Control.ImageControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Data.*" %>

<script>
     function openNav() {
        document.getElementById("mySidenav").style.width = "500px";
        document.getElementById("main").style.marginLeft = "500px";
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
        document.body.style.backgroundColor = "white";
    }
</script>

<section id="index-menu-0">
    <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
        <div class="container">
            <div class="mbr-table">
                <div class="mbr-table-cell">
                    <div class="navbar-brand">
                        <div id="mySidenav" class="sidenav" style="z-index: 3;">
                            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                            <%
                                // Get user from session
                                User user = (User) session.getAttribute("user");

                                if (user != null) {
                            %>
                            <div style="text-align: center;">
                                <!--Getting User Avatar from dropbox repository-->
                                 <img src="<%=ImageControl.importUserAvatar(user.getID())%>" 
                                     alt="This user avatar has been removed" width="100" height="100"/>
                                <a>Username: <%=user.getUsername()%></a>
                                <a>Email: <%=user.getEmail()%></a>
                                <a href="user_profile.jsp?UserID=<%=user.getID()%>">Your Profile</a>
                                <a href="login.jsp?logout=true">Logout</a>
                            </div>
                            <% }%>
                        </div>

                        <%
                            // If user has logged in, display drop-down bar
                            // If not, hide it
                            if (user != null) {
                        %>
                        <span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9776;</span>
                        <% }%>

                        <a class="navbar-caption text-danger" href="main.jsp" style="padding: 0 0 0 50px; margin-bottom: 20px;">Travel Planning</a>
                    </div>
                </div>
                <div class="mbr-table-cell">
                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
                        <li class="nav-item"><a class="nav-link link" href="Contact.jsp" aria-expanded="false">Contact</a></li>

                        <!--If user is not logging in then show the login link--> 
                        <!--If user is logging in then show the logout link--> 
                        <%if (user == null) {%>
                        <li class="nav-item"><a class="nav-link link" href="login.jsp" aria-expanded="false">Login</a></li>
                            <%} else {%>
                        <li class="nav-item"><a class="nav-link link" href="login.jsp?logout=true" aria-expanded="false">Logout</a></li>
                            <%}%>

                        <li class="nav-item nav-btn"><a class="nav-link btn btn-secondary-outline btn-secondary" href="input_getting.jsp">Start Travel Now!</a></li>
                    </ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>
                </div>
            </div>
        </div>
    </nav>
</section>
