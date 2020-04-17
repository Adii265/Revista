<%@ include file="../Base/structure.jsp" %>
        <div class = "container" style = "float:right">
            <form action = "travel_insert.jsp" method = "post" enctype = "multipart/form-data" >
                <div class = "time">
                    <p style = "font-size:120%">Choose the date:</p>
                    <input type="date" name="date">
                    <br>
                    <h3 style = "font-size:120%"><b>Title</b></h3>
                    <input type = "text" name = "title"><br>
                    <br>
                    <br>
                    <textarea cols = "125%" maxlength = "1000" name = "travel_text" rows = "15" wrap = "soft" ></textarea>
                    <input type = "file" name = "file" size = "50" style="margin-left:20%;float:left" />
                    <br><br><br><br>
                    <input type = "submit" name = "save" value = "Save" >
                    <input type = "reset" name = "reset" value = "Reset">
                </div>
                <br><hr><br>
            </form>
        </div>
  </body>
</html>