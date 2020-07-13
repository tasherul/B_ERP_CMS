<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="B_ERP_CMS.CMS.Template.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editor | HTML </title>
    <style>
        div#textEditor{
            margin:0 auto;
            width:750px;
            height:300px;
        }
        div#theRibbon{
            border-bottom:none;
            padding:10px;
            background-color:rgb(40,110,89);
            color:white;
            border-radius:8px 8px 0px 0px;
        }
        div#richTextArea{
            border:2px solid rgb(40,110,89);
            height:100%;
            width:746px;
        }
        iframe#theWYSIWYG{
            height:100%;
            widows:100%;
        }
        div#theRibbon>button
        {
            color:white;
            border:none;
            outline:none;
            background-color:transparent;
            cursor:pointer;
        }
         div#theRibbon>button:hover{
             background-color:rgb(20,90,70);
             transition:all 0.3s linear 0s;
         }
    </style>
    <script>
        window.addEventListener("load", function () {
            var editor = theWYSIWYG.document;
            editor.designMode = "on";

            boldButton.addEventListener("click", function () {
                //var Code = document.getElementById('theWYSIWYG').srcdoc;
                //document.getElementById('HtmlShow').value = Code;
                editor.execCommand("Bold", false, null);

            }, false);


        }, false);

    </script>
</head>
<body>
    <form id="form1" runat="server">




                <div id="textEditor">
                    <div id="theRibbon">
                        <button id="boldButton" title="Bold"><b>B</b></button>
                    </div>
                    <div id="richTextArea">
                        <iframe id="theWYSIWYG" name="theWYSIWYG" frameborder="0"></iframe>
                    </div>
                    <textarea id="HtmlShow" cols="20" rows="20"></textarea>
                </div>

    </form>
</body>
</html>
