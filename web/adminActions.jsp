<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jsscript/adminOptions.js"></script>
        <script src="jsscript/jquery.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link href="stylesheet/backgroundimage.css" rel="stylesheet">
        <link href="stylesheet/pageheader.css" rel="stylesheet">
        <link href="stylesheet/admin.css" rel="stylesheet">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Admin Options</title>
    </head>
    <body>
        <% String userid=(String)session.getAttribute("userid");
            if(userid==null) {
                response.sendRedirect("accessdenied.html");
                return;
            }
        %>
        <div class='sticky'><div class='candidate'>VOTE FOR CHANGE</div><br>"+
            "<div class='subcandidate'>Admin Actions Page</div><br><br>"+
            "<div class='logout'><a href='login.html'>logout</a></div></div>
        <div class='container'>
            <div id='dv1' onclick='manageuser()'><img src='images/muser.png' height='300px' width='300px'><br><h3>Manage Users</h3></div>
            <div id='dv2' onclick='managecandidate()'><img src='images/ManageCandLists.jpg' height='300px' width='300px'><br><h3>Manage Candidates</h3></div>
            <div id='dv2' onclick='electionresult()'><img src='images/resultgraph.jpg' height='300px' width='300px'><br><h3>Election Result</h3></div>
        </div>
        <br><br><div align='center' id='result'></div>
    </body>
    <script>
        function electionresult() {
            window.location.href="ElectionResultControllerServlet";
        }
        function manageuser(){
            swal("Admin", "Redirecting To User Page", "success").then(()=>{
            window.location.href="ManageUserControllerServlet";
            })
        }
    </script>
</html>
