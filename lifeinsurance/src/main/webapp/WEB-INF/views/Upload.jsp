<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<html>
    <head>
    <style>
        input,select{
            color: #FFFFFF; 
            font-family: Verdana; 
            font-weight: bold; 
            font-size: 24px; 
            background-color:black;
            margin: 5%;
        }
        body{
            background-image: url(https://youthincmag.com/wp-content/uploads/2020/05/image2.jpg) ;
            background-size: cover;
            margin: 5%;
        }
        </style>
    </head>
    
    <body>
    <form action="/getHomePage">
    <center>
        <h1><i>Your Available Balance is ${balance}</i></h1>
        <h2>Please upload any documents if any</h2>
        <table>
            <tr>
            <td><label for="img">Choose image</label></td>
            <td><input type="file" id="img" name="img" accept="image/* " onchange="loadFile(event)"></td>
               </tr>
            <tr> <td>Uploaded Image  </td>
                <td><img id="output" width="200" height="100" /></td></tr>
            <tr>
            <td><input type="button" id="button1" value="Upload" onclick="add_element_to_array();"></td>
                <td><input type="submit" id="button2" value="Return to Home Page" onclick="/getHomePage"></td></tr>
            
            </table>
            
        <h2><div id="Result"></div></h2>
        </center>
            <script>
                    var loadFile = function(event) {
                        var image = document.getElementById('output');
                        image.src = URL.createObjectURL(event.target.files[0]);
                    };
                var x = 0;
                var array = Array();

                function add_element_to_array()
                {
                     //array[x] = document.getElementById("artid").value;
                    // alert("Element: " + array[x] + " Added at index " + x);
                    document.getElementById("Result").innerHTML="File Uploaded Successfully";
                     //x++;
                     //document.getElementById("artid").value = "";
                }

            </script>
        </form>
    </body>
</html>