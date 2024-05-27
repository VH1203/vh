<%-- 
    Document   : form
    Created on : May 20, 2024, 7:20:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var countPost = 0;
            var countComment = 0;
            
            function addPost() {
                countPost++;
                var pagecontent = document.getElementById("txtPostContent").value;
                var divPostContainer = document.getElementById("divPostContainer");
                divPostContainer.innerHTML += "<div id=\"divPost" + countPost + "\">";
                divPostContainer.innerHTML += "<div>";
                divPostContainer.innerHTML += "<p>" + pagecontent + "</p>";
                divPostContainer.innerHTML += "<input type=\"hidden\" name=\"postcontent" + countPost + "\" value=\"" + pagecontent + "\" />";
                divPostContainer.innerHTML += "<input type=\"hidden\" name=\"postid\" value=\"" + countPost + "\"/>";
                divPostContainer.innerHTML += "</div>";
                divPostContainer.innerHTML += "<div id=\"divCommentContainer" + countPost + "\"></div>";
                divPostContainer.innerHTML += "<div>";
                divPostContainer.innerHTML += "<input type=\"text\" id=\"txtCommentContent" + countPost + "\"/>";
                divPostContainer.innerHTML += "<input type=\"button\" value=\"Comment\" onclick=\"addComment(" + countPost + ")\" />";
                divPostContainer.innerHTML += "</div>";
                divPostContainer.innerHTML += "</div>";
            }

            function addComment(postid) {
                countComment++;

                var divCommentContainer = document.getElementById("divCommentContainer" + postid);
                var commentcontent = document.getElementById("txtCommentContent" + postid).value;
                divCommentContainer.innerHTML += "<div>";
                divCommentContainer.innerHTML += "<p>" + commentcontent + "</p>";
                divCommentContainer.innerHTML += "<input type=\"hidden\" name=\"commentid\" value=\"" + countComment + "\" />";
                divCommentContainer.innerHTML += "<input type=\"hidden\" name=\"commentcontent" + countComment + "\" value=\"" + commentcontent + "\"/>";
                divCommentContainer.innerHTML += "<input type=\"hidden\" name=\"BossID" + countComment + "\" value=\"" + postid + "\"/>";
                divCommentContainer.innerHTML += "</div>";
            }
        </script> 
    </head>
    <body>
        <div id="divPostContent">
            Post <input type="text" id="txtPostContent"/>
            <input type="button" value="Post" onclick="addPost()"/>
        </div>
        <div>
            <form action="wall" method="POST">
                <div id="divPostContainer"></div>
                <input type="submit" value="Save"/>
            </form>

        </div>   

    </body>

</html>
