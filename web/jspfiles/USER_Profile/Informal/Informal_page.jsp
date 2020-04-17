<%@ include file="../Base/structure.jsp" %>

        <div class = "container" style = "float:right">
        <div class = "time">
            <p style = "font-size:120%">Choose the date:</p>
            <form name ="informal_form" method ="post" action = "informal_insert.jsp" onsubmit = "return insert_informal_javascript()">
                <input type="date" name="date">
                <br>
                <h3 style="text-align:center">Feel free to share anything.!</h3>
                <br>
                <textarea class = "form-control" maxlength = "1000" name = "informal_text" rows = "20" wrap = "soft" style = "max-width:80%;margin-left:10%">
                </textarea>
                <br><br>
                <input type = "submit" name = "save" value = "Save">
                <input type = "reset" name = "reset" value = "Reset">
                <br><br>
            </form>
        </div>
    </div>
    </div>
</body>
</html>