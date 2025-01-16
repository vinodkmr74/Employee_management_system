<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>

    <link rel="stylesheet" href="leave_hr_update.css" />
  </head>
  <body>
    <form action="hrleave" method="post">

      <h1>Leave Update</h1>

      <div class="form_fild">

      <label for="id">Id</label>
      <input type="number" name="id" id="idd" placeholder="Enter id" required />

      <label for="Name">Name</label>
      <input type="text" name="name" id="name" />

      <label for="depatament">Depatament</label>
      <select name="select">
        <option>web developer</option>
        <option>java developer</option>
        <option>BPO</option>
        <option>HR</option>
        <option>other</option>
      </select>

      <label for="TO_DATE">TO_Date</label>
      <input type="date" name="todate" id="todate" />

      <label for="FROM_DATE">From_Date</label>
      <input type="date" name="fromdate" id="fromdate" />

      <label for="status">Status</label>
      <select name="pending" id="status">
        <option>pending</option>
        <option>Accept</option>
        <option>Reject</option>
      </select>

      <input type="submit" value="SUBMIT" id="sub" />

      </div>
    </form>
  </body>
</html>
