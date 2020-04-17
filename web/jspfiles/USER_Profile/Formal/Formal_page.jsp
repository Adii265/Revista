<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Formal_page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../..\..\bootstrap\bootstrap.min.css">
    <link rel="stylesheet" href="../..\..\css\user_edit.css">
    <script src="../..\..\bootstrap\jquery.min.js"></script>
    <script src="../..\..\bootstrap\bootstrap.min.js"></script>
  </head>
  <body>
      

<div class = "container">
    <hr>
      <div class = "time">
        <p style = "font-size:120%">Choose the date:</p>
        <form action="..\..\jspfiles\formal_meetings.jsp" method = "post" name = "formalform">
            <input type="date" name="date">
            <br>
            <hr>
            <div class = "main">
                <div class="tab-content" style = "margin-left:30%">
                    <div id="home" class="tab-pane fade in active">
                        <h3>Reminder</h3><br>
                        <textarea cols = "100%" maxlength = "1000" name = "remF" placeholder = "Type your Reminders here!" rows = "15" wrap = "soft">
                        </textarea>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3 style="text-align:center">To-do-list</h3>
                        <table class = "todolist">
                        <tr class = "appoint">
                        <th class = "app">Done?(Yes/No)</th>
                <th class = "app">Task:</th>
                <th class = "app">Due date:(YYYY/MM/DD)</th>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr><tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "20%" maxlength = "10" name = "done" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "50%" maxlength = "50" name = "appointments" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><input type="date" name="date1"></td>
              </tr>

            </table>
          </div>
          <div id="menu2" class="tab-pane fade">
            <h3 style="margin-left:40%">Appointments</h3>
            <table class = "todolist">
              <tr class="appoint">
                <th class = "app">Time:(24 hour format)</th>
                <th class = "app">Title:</th>
                <th class = "app">Starting time:(24 hour format)</th>
                <th class = "app">Phone number:</th>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>
              <tr class="appoint">
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "time" rows = "1" wrap = "soft">
              </textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "50" name = "title" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "10" name = "stime" rows = "1" wrap = "soft"></textarea></td>
                <td class = "app"><textarea cols = "25%" maxlength = "13" name = "pno" rows = "1" wrap = "soft"></textarea></td>
              </tr>

            </table>
          </div>
          <div id="menu3" class="tab-pane fade">
            <h3>Notes</h3><br>
            <p>Pull up your pants and Start writing notes!</p><br>
            <textarea cols = "100%" maxlength = "1000" name = "notesF" placeholder = "Type your notes here!" rows = "30" wrap = "soft">
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