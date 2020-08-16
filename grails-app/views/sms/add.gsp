<!DOCTYPE html>
<head>
    <title>Add Student</title>
    <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous"></script>
</head>

<body>
<br><br>
<div align = "center">

    <label>Name</label>
    <g:textField name = "name" value = "" id = "name" />
    <br><br>
    <label>Age</label>
    <g:textField name = "age" value = "" id = "age"/>
    <br><br>
    <button id = "button" name = "button" onClick = "addAjax()">Add</button>

</div>
</body>

<script>
    function addAjax() {
        $(document).ready(function() {
            var mix_name = $('#name').val();
            var name = mix_name.toUpperCase(); //Convert the name in uppercase
            var age = $('#age').val();

            //Check if name field is empty
            if(name == "") {
                alert('Name field is empty');
                return false;
            }

            //Check if name field is empty
            if(age == "") {
                alert('Age field is empty');
                return false;
            }

            var conv_to_num = Number(age);  //Convert age string to number

            //Check if the age is an integer
            if(isNaN(conv_to_num) || !Number.isInteger(conv_to_num))
            {
                alert("Age should be integer");
                return false;
            }

            var URL="${createLink(controller:'sms',action:'add_student')}"

            $.ajax({
                url: URL,
                type: "POST",
                datatype: "html",
                data:{name:name, age:age},
                success:function(data)
                {
                    alert(data);
                }
            })

        })
    }

</script>


</html>