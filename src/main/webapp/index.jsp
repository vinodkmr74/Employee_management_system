<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="indexx.css">
    </head>

    <body>

        <div class="div1">
            <form action="adminlogin" method="post">

                <h1>LOGIN</h1>

                <div class="form_group">
                    <div class="form_field">
                        <h2>Select User:</h2>
                        <select name="user">
                            <option>User</option>
                            <option>admin</option>
                            <option>Employee</option>
                        </select>
                    </div>
                    <div class="form_field">
                        <label>Email</label>
                        <input type="email" name="email" id="email" placeholder="Enter Email" required>
                    </div>
                    <div class="form_field">
                        <label>Password</label>
                        <input type="password" name="password" id="password" placeholder="Enter password" required>
                    </div>
                    <div class="form_field">
                        <input type="submit" value="Login" id="submit">
                    </div>
                </div>
            </form>
        </div>
    </body>

    </html>