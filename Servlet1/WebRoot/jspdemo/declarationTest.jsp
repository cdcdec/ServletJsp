<%!
    public String getTodaysDate() {
        return new java.util.Date().toString();
    }
%>
<!DOCTYPE html>
<html>
<head><title>Declarations</title></head>
<body>
Today is <%=getTodaysDate()%>
</body>
</html>