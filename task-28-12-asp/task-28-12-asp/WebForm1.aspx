<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task_28_12_asp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <style>
        .text {
            align-items: center;
            background-color: white;
            color: black;
            border: 3px solid red;
            border-radius: 5px;
            padding: 10px;
            width: 500px;
        }

        .btn {
            border: 3px solid red;
            border-radius: 5px;
            padding: 10px;
            background-color: white;
            color: black;
            font-weight: bolder;
        }
        /*.btn:hover{
            border:3px solid red;
            border-radius:5px;
            padding:10px;
            font-weight:bolder;
            align-items:center;
            background-color:black;
            color:white;
        }*/
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: darkgray;">Write Your Comment : </h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="send" OnClick="Button1_Click" CssClass="btn" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>