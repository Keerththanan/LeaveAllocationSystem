<%-- 
    Document   : UserPage
    Created on : Aug 30, 2018, 3:30:43 AM
    Author     : Thanan Pathman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserPage</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script>
            $(function () {

                $('#myLeavesLink').click(function (e) {
                    $("#myLeavesForm").delay(100).fadeIn(100);
                    $("#applyLeaveForm").fadeOut(100);
                    //$("#other-form").fadeOut(100);
                    //$("#other-form").fadeOut(100);
                    $('#applyLeaveLink').removeClass('active');
                    //$('#register-form-link').removeClass('active');
                    //$('#register-form-link').removeClass('active');
                    $(this).addClass('active');
                    e.preventDefault();
                });
                
                $('#applyLeaveLink').click(function (e) {
                    $("#applyLeaveForm").delay(100).fadeIn(100);
                    $("#myLeavesForm").fadeOut(100);
                    //$("#other-form").fadeOut(100);
                    //$("#other-form").fadeOut(100);
                    $('#myLeavesForm').removeClass('active');
                    //$('#register-form-link').removeClass('active');
                    //$('#register-form-link').removeClass('active');
                    $(this).addClass('active');
                    e.preventDefault();
                });

            });

            if ($('#leaveTable > tbody > tr').length == 0) {
                $('#leaveTable > thead > th').css('display', 'none');
            }
        </script>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <img class="img-responsive" src="Contents/images/home.png" style="width: 40px; height: 40px">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" id="myLeavesLink">MyLeaves</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#" id="applyLeaveLink">ApplyLeave</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>

        <form id="myLeavesForm">
            <table id ="leaveTable" class="table table-strip"> 
                <tr>
                    <th>Date</th>
                    <th>Type</th>
                    <th>From</th>
                    <th>To</th>
                    <th>LeaveDays</th>
                    <th>Reason</th>
                    <th>Status</th>
                </tr>
                <tbody>
                <c:forEach items="${leaveList}" var="leaveData">
                    <tr>
                        <td>${leaveData.getDate()}</td>
                        <td>${leaveData.getType()}</td>
                        <td>${leaveData.getFrom()}</td>
                        <td>${leaveData.getTo()}</td>
                        <td>${leaveData.getLeaveDays()}</td>
                        <td>${leaveData.getReason()}</td>
                        <td>${leaveData.getStatus()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>

        <form id="applyLeaveForm">
            <table id ="leaveTable" class="table table-strip"> 
                <tr>
                    <th>Date</th>
                    <th>Type</th>
                </tr>
                <tbody>

                </tbody>
            </table>
        </form>
    </body>
</html>
