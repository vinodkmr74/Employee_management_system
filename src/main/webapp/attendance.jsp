<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="attendence1.css">
    </head>

    <body>
        <h1>Employee Attendance Entry Time</h1>



        <form action="attendance_view.jsp">
            <div class="box1">
                <label for="attend">ATTENDENCE RECORD</label>
                <input type="number" name="id" id="record" placeholder="Enter id" required>
                <input type="submit" value="View Attendence" id="view">
            </div>

        </form>



        <form action="attend" method="post">
            <table border="3" class="tab">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>DEPARMENT</th>
                    <th>DATE</th>
                    <th>JOIN TIME</th>
                </tr>
                <tr>
                    <td><input type="number" name="id" id="idd" placeholder="Enter id" required></td>
                    <td><input type="text" name="name" id="name" placeholder="Enter name" required></td>
                    <td><select name="select" id="dep">
                            <option></option>
                            <option>web developer</option>
                            <option>java developer</option>
                            <option>BPO</option>
                            <option>HR</option>
                            <option>other</option>
                        </select></td>
                    <td>
                        <input type="date" name=date id="todate">
                    </td>
                    <td>
                        <input type="time" name="jointine" id="joindate">
                    </td><br>

                </tr>
            </table><br>
            <input type="submit" value="Submit" id="sub">

        </form>



        <form action="outtime" method="post">

            
            <h1>Employee Attendance Out Time</h1>
            
            <table border="2px" class="tab1">
                <tr>
                    <th>ID</th>
                    <th>OUT TIME</th>
                </tr>

                <tr>
                    <td><input type="number" name="id" id="idd" placeholder="Enter id" required></td>
                    <td> <input type="time" name="outtime" id="out"></td>
                </tr>
            </table>

            <input type="submit" value="Submit" id="sub1">
        </form>



    </body>

    </html>