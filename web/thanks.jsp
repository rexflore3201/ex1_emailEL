<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>    
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>
    
    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    
    <p>Here is the information that you entered (useBean):</p>
    
    <p>The current date is ${currentDate}</p>
    
    <p>Hello ${user.firstName}</p>
    
    <p>The context init param: ${initParam.custServEmail}</p>
    
    <p>The first address on our list is ${users[0].email}<br>
       The second address on our list is ${users[2].email}<br>
    </p>
    
    <p>First name: ${param.firstName}<br>
       Email address 1: ${paramValues.email[0]}<br>
       Email address 2: ${paramValues.email[l]}
    </p>
    
    <p>MIME types: ${header.accept}<br>
       Compression types: $ {header ["accept-encoding"]}
    </p>
    
    <p>HTTP request method: ${pageContext.request.method}<br>
       HTTP response type: ${pageContext.response.contentType}<br>
       HTTP session ID: ${pageContext.session.id}<br>
       HTTP contextPath: ${pageContext.servletContext.contextPath}<br>
    </p> 

    <jsp:useBean id="user" scope="session" class="cca.business.User"/>
    <label>Email:</label>
    <span><jsp:getProperty name="user" property="email"/></span><br>
    <label>First Name:</label>
    <span><jsp:getProperty name="user" property="firstName"/></span><br>
    <label>Last Name:</label>
    <span><jsp:getProperty name="user" property="lastName"/></span><br>

    <p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
        
</body>
</html>