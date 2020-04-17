<%@ include file="../Base/structure.jsp" %>
    
        <div class = "container" style = "float:right">
            <div class = "time">
                <p style = "font-size:120%">Choose the date:</p>
                <form action="formal_insert_note.jsp" method = "post" name = "formalform">
                    <input type="date" name="date">
                    <br>
                    <hr>
                    <div class = "main">
                        <div class="tab-content" style = "margin-left:10%">
                            <div id="home" class="tab-pane fade in active">
                                <h3>Notes</h3><br>
                                <p>Pull up your pants and Start writing notes!</p><br>
                                <textarea cols = "100%" maxlength = "1000" name = "notesF" placeholder = "Type your notes here!" rows = "18" wrap = "soft">
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <input type = "submit" name = "save" value = "Save">
                    <input type = "reset" name = "reset" value = "Reset" style = "margin-right:10%">
                    <br><hr><br>
                </form>
            </div>
    </div>
</body>
</html>