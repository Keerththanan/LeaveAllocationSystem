<%-- 
    Document   : LoginPage
    Created on : Aug 27, 2018, 5:15:22 PM
    Author     : Thanan Pathman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Login Page</title>
        
    </head>

    <body id="LoginForm">
        <div class="container">
            
            <div class="main-div">
                        <div class="row" style="margin-top: 60px"> 
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <label align="center" class="form-control">Please enter your email and password</label>
                            </div>
                        </div>
                        
                        <form id="Login">
                            <div class="row" style="margin-top: 60px">
                                <div class="col-md-3"></div>
                                <div class="form-group col-md-6">
                                    <label for="inputEmail">Email</label>
                                    <input type="email" class="form-control" id="inputEmail" placeholder="example@email.id">
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="form-group col-md-6">
                                    <label for="inputEmail">User name</label>
                                    <input type="text" class="form-control" id="inputUname" placeholder="Please enter your user name" required>
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" placeholder="Password" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="forgot col-md-6">
                                    <a href="#">Forgot password?</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <button type="submit" class="btn btn-primary col-md-6" style="margin-top: 15px">Login</button> 
                            </div>
                        </form>
            </div>
        </div>

    </body>
</html>
