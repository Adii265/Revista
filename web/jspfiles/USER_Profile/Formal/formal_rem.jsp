<%@ include file="../Base/structure.jsp" %>

        <div class = "container" style = "float:right">
            <div class = "time">
                <p style = "font-size:120%">Choose the date:</p>
                <form action="formal_insert_rem.jsp" method = "post" name = "formalform">
                    <input type="date" name="date">
                    <br>
                    <hr>
                    <div class = "main">
                        <div class="tab-content" style = "margin-left:10%">
                            <div id="home" class="tab-pane fade in active">
                                <h3>Reminder</h3><br>
                                <textarea cols = "100%" maxlength = "1000" name = "remF" placeholder = "Type your Reminders here!" rows = "18" wrap = "soft">
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <input type = "submit" name = "save" value = "Save">
                    <input type = "reset" name = "reset" value = "Reset" >
                    <br><hr><br>
                </form>
            
           </div>
        </div>
</body>
</html>