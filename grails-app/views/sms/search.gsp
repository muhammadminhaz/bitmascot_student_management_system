<!DOCTYPE html>
<head>
    <title>Search Page</title>

    <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous"></script>
</head>

<body>
<div align = "center">
    <br><br>
    <label>Name</label>
    <g:textField name = "search" id = "search" />
    <br><br>
    <button id = "button" name = "button">Search</button>

    <h id = "hidden"></h>
</div>
</body>

<script>

    //jQuery function
    $(document).ready(function(){

        $('#button').click(function() {

            var URL="${createLink(controller:'sms',action:'search_student')}"
            var mixed_search = $('#search').val();

            //Check if the search box is empty
            if(mixed_search == "") {
                alert('Search field is empty');
                return false;
            }

            var search = mixed_search.toUpperCase();

            $.ajax({
                url: URL,
                type: "POST",
                datatype: "html",
                data:{search:search},
                success:function(data)
                {
                    $('#hidden').html(data);
                }
            })
        })

    })
</script>
</html>