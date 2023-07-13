<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>CRUD APP</title>
    <style>
        body{
            background-color: aliceblue;
        }
        .operation{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
       .inner{
            padding-top: 20px;
        }
    </style>
</head>

<body>
    <div class="operation">
     <div class="inner">
    <form action="adduser">
        <h2>ENTER USER DATA</h2>
        <div > 
            <label>ID:</label>
             <input type="number" name="id">
        </div>
        <div class="inner">
            <label>NAME:</label>
             <input type="text" name="name">
        </div>
        <input type="submit" >
       
    </form>
    </div>

    <div class="inner">
    <h2>FIND INFORMATION BY ID</h2>
    <form action="finduser">
        <div>
            <label>ID:</label>
             <input ty pe="number" name="id">
        </div>
        <input type="submit" >
       
    </form>
    </div>

    <div class="inner">
    <h2>DELETE DATA BY ID</h2>
    <form action="deleteuser">
        <div>
            <label>ID:</label>
             <input type="number" name="id">
        </div>
        <input type="submit" >
       
    </form>
    </div>

    <div class="inner">
    <h2>UPDATE BY ID</h2>
    <form action="updateuser">
        <div>
            <label>ID:</label>
             <input type="number" name="id">
        </div>
        <input type="submit" >
       
    </form>
    </div>

    </div>
</body>
</html>