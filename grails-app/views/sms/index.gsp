<!DOCTYPE html>
<head>
    <title>Home Page </title>
    <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous"></script>
</head>
<style>

table{
    border-collapse: collapse;
    width: 30%;
}
th, td{
    text-align: center;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
</style>
<body>
<div align = "center">
    <br/> <br/>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Age</th>
        </tr>
        <g:each in="${fetched_value}" status="i" var="val">
            <tr>
                <td>
                    ${val.name}
                </td>
                <td>
                    ${val.age}
                </td>
            </tr>
        </g:each>
    </table>

    <br/><br/>

    <g:form name = "myform" url = "[controller: 'Sms', action: 'add']">
        <g:submitButton name = "submit_add" value = "Add Student" />
    </g:form>
    <br>
    <g:form name = "myform" url = "[controller: 'Sms', action: 'search']">
        <g:submitButton name = "submit_search" value = "Search Student" />
    </g:form>

</div>
</body>
</html>