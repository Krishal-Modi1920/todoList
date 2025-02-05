<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update TODO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
    
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-submit, .btn-back {
            font-size: 16px;
            padding: 10px 20px;
            width: 48%;
        }
        .btn-submit {
            background-color: #007bff;
            border-color: #007bff;
            color: white;
        }
        .btn-submit:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .btn-back {
            background-color: #6c757d;
            border-color: #6c757d;
            color: white;
        }
        .btn-back:hover {
            background-color: #5a6268;
            border-color: #5a6268;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2 class="form-header">Update TODO</h2>
        
        <form action="${pageContext.request.contextPath }/handle-product" method="POST">
            
            <input type="hidden" value="${todo.id }" name="id"/>
            
            <div class="form-group">
                <label for="title">TODO Title</label>
                <input type="text" class="form-control" id="title" name="title" value="${todo.title }" placeholder="Enter TODO title" required>
            </div>
            
            <div class="form-group">
                <label for="description">TODO Description</label>
                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter TODO description" required>${todo.description }</textarea>
            </div>
            
            <div class="form-group">
                <label for="dueDate">Due Date</label>
                <input type="date" class="form-control" id="dueDate" name="dueDate" value="${todo.dueDate }" required>
            </div>
            
           <%--  <div class="button-container">
                <a href="${pageContext.request.contextPath }" class="btn btn-back">Back</a>
                <button type="submit" class="btn btn-submit">Update</button> --%>
            </div>
        </form>
        
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
