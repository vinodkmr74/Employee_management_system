<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8" />
        <title>Insert title here</title>

        <link rel="stylesheet" href="leaves.css" />
    </head>

    <body>
        <h1>Employee leave</h1>

        <form action="leaveview.jsp">
        
           <button id="btn"><a href="leaveview.jsp">View Leave</a></button>

    </form>

        <form action="leav" method="post">
            <div class="form_fild">
                <label for="id">Id</label>
                <input type="number" name="id" id="idd" required />

                <label for="name">Name</label>
                <input type="text" name="name" id="name" required />

                <label for="dep">Department</label>
                <select name="select" id="dep" required>
                    <option></option>
                    <option>web developer</option>
                    <option>java developer</option>
                    <option>BPO</option>
                    <option>HR</option>
                    <option>other</option>
                </select>

                <label for="to">To_Date</label>
                <input type="date" name="todate" id="todate" required />

                <label for="from">From_Date</label>
                <input type="date" name="fromdate" id="fromdate" required />

                <label for="description">Enter Description:</label>
                <textarea name="reason" id="description" rows="10" cols="50" placeholder="Enter Reason..."></textarea>
                <input type="submit" value="Apply" id="apply" />
            </div>
        </form>

       
    </body>

    </html>