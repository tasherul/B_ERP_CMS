<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="B_ERP_CMS.CMS.Development.view" %>

<%@ Register Src="~/CMS/Development/htmlCode.ascx" TagPrefix="uc1" TagName="htmlCode" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Development</title>
        <link rel="shortcut icon" href="../../File/10003/assets/images/favicon.ico"/><!-- App css -->
    <asp:PlaceHolder ID="pnlHeader" runat="server"></asp:PlaceHolder>
</head>
<body>
    <form id="form1" runat="server">  
        <uc1:htmlCode runat="server" id="htmlCode" />
    </form>
   

    <script type="text/javascript">


        function dataInsert(tables_id, messages, database_table) {
            localStorage.setItem("dataTableName", tables_id);//sl - 1 // i = 0 
            var x = tables_id;
            var i = 0;
            var dataTable_Data = [];
            for (i = 0; i < x.length; i++) {
                var data = document.getElementById(tables_id[i]);
                dataTable_Data.push(data.value);
            }
            var index = database_table+localStorage.length;//2

            if (localStorage.getItem(database_table+index) == null) {//1=null
                localStorage.setItem(database_table+index, dataTable_Data);
            }
            else {
                index++;
                localStorage.setItem(database_table+index, dataTable_Data);
            }
            

            

            var mess = this.document.getElementById(messages);
            mess.innerHTML = "Data Saved";
            for (i = 0; i < x.length; i++) {
                var data = document.getElementById(tables_id[i]);
                data.value="";
            }
            //alert(dataTable_Data);
        }
        function Loadshow(table_id) {

            if (document.getElementById("showtable")) {
                var mytable = document.getElementById("showtable");
                var header = localStorage.getItem("dataTableName");
                //alert(header.length);
                header = header.replaceAll("txt_", "");
                var i = 0; var thead = "";

                var array_header = varTOarray(header);


                for (i = 0; i < array_header.length; i++) {
                    thead += "<th>" + array_header[i] + "</th>";
                }
                //alert(array_header)
                var ii = 0;
                var main = "";
                for (let i = 0; i < localStorage.length; i++) {
                    var storedValue = localStorage.key(table_id+i);
                    if (storedValue != "dataTableName" && storedValue != "jfVersion") {
                        var data = localStorage.getItem(storedValue);
                        //console.log(`Item at ${i}: ${data}`);
                        var val_array = varTOarray(data);
                        if (val_array.length > 0) {
                            main += "<tr>";
                            for (ii = 0; ii < val_array.length; ii++) {
                                main += "<td>" + val_array[ii] + "</td>";
                            }
                            main += "</tr>";
                        }
                    }
                }
                //alert(localStorage.length);
                //localStorage.clear();
                mytable.innerHTML = "<table>" +
                    "<thead>" +
                    "<tr>" + thead + "</tr>" +
                    "</thead><tbody> " + main + " </tbody></table>";
            }

        }


        if (document.getElementById("showtable")) {
            var mytable = document.getElementById("showtable");
            var header = localStorage.getItem("dataTableName");
            //alert(header.length);
            header = header.replaceAll("txt_", "");
            var i = 0; var thead = "";

            var array_header = varTOarray(header);
           

            for (i = 0; i < array_header.length; i++) {
                thead += "<th>" + array_header[i] + "</th>";
            }
            //alert(array_header)
            var ii = 0;
            var main = "";
            for (let i = 0; i < localStorage.length; i++) {
                var storedValue = localStorage.key(i);
                if (storedValue != "dataTableName" && storedValue != "jfVersion") {
                    var data = localStorage.getItem(storedValue);
                    //console.log(`Item at ${i}: ${data}`);
                    var val_array = varTOarray(data);
                    if (val_array.length > 0) {
                        main += "<tr>";
                        for (ii = 0; ii < val_array.length; ii++) {
                            main += "<td>" + val_array[ii]+"</td>";
                        }
                        main += "</tr>";
                    }
                }
            }
            //alert(localStorage.length);
            localStorage.clear();
            mytable.innerHTML = "<table>" +
                "<thead>" +
                "<tr>" + thead + "</tr>" +
                "</thead><tbody> " + main+" </tbody></table>";
        }

        function varTOarray(data) {

            var array_header = [];
            var temp_header = "";
            for (i = 0; i < data.length; i++) {
                if (data[i] == ',') {
                    array_header.push(temp_header);
                    temp_header = "";
                }
                else {
                    temp_header += data[i];
                }
                if (i == data.length - 1) {
                    array_header.push(temp_header);
                }
            }
            return array_header;
        }

    </script>
       <asp:PlaceHolder ID="pnlJS" runat="server"></asp:PlaceHolder>
</body>
</html>
