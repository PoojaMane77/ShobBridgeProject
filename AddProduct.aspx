<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="thinkbridge.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
        #form1 {
            height: 1603px;
            background-image: url('Images/image16.jpg');
            /*background-repeat: no-repeat;*/
            /*background-size: 100% 100%;*/
            background-size: auto;
        }

        #firstleft {
            height: 1080px;
        }

        .prdctlogout {
            position: absolute;
            top: 50px;
            right: 100px;
        }

        .prdctcss {
            position: absolute;
            top: 170px;
            right: 900px;
        }

        .prdctname {
            position: absolute;
            top: 240px;
            right: 900px;
        }

        .prdctnametxt {
            position: absolute;
            top: 240px;
            right: 600px;
            width: 205px;
        }

        .prdctnamereq {
            position: absolute;
            top: 240px;
            right: 300px;
        }

        .prdctpricereq {
            position: absolute;
            top: 520px;
            right: 300px;
        }

        .prdctcatdd {
            position: absolute;
            top: 310px;
            right: 600px;
        }

        .prdctbrnddd {
            position: absolute;
            top: 380px;
            right: 600px;
        }

        .prdctsizdd {
            position: absolute;
            top: 450px;
            right: 600px;
        }


        .prdctcat {
            position: absolute;
            top: 310px;
            right: 960px;
        }


        .prdctbrnd {
            position: absolute;
            top: 380px;
            right: 990px;
        }


        .prdctsiz {
            position: absolute;
            top: 450px;
            right: 1010px;
        }

        .prdctprice {
            position: absolute;
            top: 520px;
            right: 990px;
        }

        .prdctclr {
            position: absolute;
            top: 600px;
            right: 1000px;
        }

        .prdctdes {
            position: absolute;
            top: 680px;
            right: 950px;
        }

        .prdctimg {
            position: absolute;
            top: 760px;
            right: 1000px;
        }

        .imgmsgcss {
            position: absolute;
            top: 800px;
            right: 600px;
        }

        .prdctad {
            position: absolute;
            top: 950px;
            right: 530px;
        }

        .prdctcancl {
            position: absolute;
            top: 950px;
            right: 660px;
        }

        .lblmsgcss {
            position: absolute;
            top: 1050px;
            right: 650px;
        }

        .prdctclrtxt {
            position: absolute;
            top: 590px;
            right: 600px;
        }

        .prdctdestxt {
            position: absolute;
            top: 660px;
            right: 600px;
        }

        .prdctfile {
            position: absolute;
            top: 870px;
            right: 620px;
        }

        .imgup {
            position: absolute;
            top: 870px;
            right: 620px;
        }

        .imgcan {
            position: absolute;
            top: 870px;
            right: 520px;
        }

        .imgcss {
            position: absolute;
            top: 760px;
            right: 700px;
        }

        .prdctpricetxt {
            position: absolute;
            top: 520px;
            right: 600px;
        }
    </style>
</head>
<body>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <form id="form1" runat="server">

        <div class="container">

            <div class="col-xs-12">
                <div id="firstleft" class="col-md-4">
                    <div class="col-md-12">
                        <br />
                        <div id="firstleft0" class="col-md-4">
                            <div class="col-xs-12">
                                <div class="col-xs-6">
                                    <h2>
                                        <asp:Button ID="btnhome" runat="server" Text="Home" Width="97px" Style="margin-left: 82px" Height="36px" OnClick="btnhome_Click" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnviewproduct" runat="server" Text="View Product" Width="97px" Style="margin-left: 20px; margin-top: 0px;" Height="36px" OnClick="btnviewproduct_Click" />

                                        <asp:Button ID="btnlogout" runat="server" CssClass="prdctlogout" Text="log Out" Width="97px" Style="margin-left: 560px" Height="36px" OnClick="btnlogout_Click" />
                                    </h2>
                                    <div class="col-md-12">
                                    </div>
                                </div>
                            </div>
                            <asp:Label ID="Label1" runat="server" CssClass="prdctcss" Text="Add Product" ForeColor="DarkGreen" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                        </div>


                    </div>

                    <asp:Label ID="lblProductName" runat="server" CssClass="prdctname" Text="Product Name*" ForeColor="White" Font-Bold="true" Font-Size="X-Large"></asp:Label>

                    <asp:TextBox ID="txtProductName" CssClass="prdctnametxt" runat="server" Height="30px"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="reqproductname" CssClass="prdctnamereq" runat="server" ControlToValidate="txtProductName" ValidationGroup="save" ErrorMessage="Please Enter Product Name" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regproductname" CssClass="prdctnamereq" runat="server" ControlToValidate="txtProductName" ValidationGroup="save" ValidationExpression="^[a-zA-Z0-9]*$" ErrorMessage="Enter Characters and numbers only" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:RegularExpressionValidator>



                    <asp:Label ID="lblcat" runat="server" CssClass="prdctcat" Text="Category" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <asp:DropDownList ID="ddcat" runat="server" Style="margin-left: 2px" CssClass="prdctcatdd" Height="30px" Width="215px" >
                    </asp:DropDownList>



                    <asp:Label ID="lblbrand" runat="server" CssClass="prdctbrnd" Text=" Brand " ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <asp:DropDownList ID="ddbrand" runat="server" CssClass="prdctbrnddd" Style="margin-left: 2px" Height="30px" Width="215px">
                    </asp:DropDownList>



                    <asp:Label ID="lblsize" runat="server" Text="Size" CssClass="prdctsiz" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>



                    <asp:DropDownList ID="ddsize" runat="server" CssClass="prdctsizdd" Style="margin-left: 2px" Height="30px" Width="215px">
                    </asp:DropDownList>




                    <asp:Label ID="lblProductPrice" runat="server" CssClass="prdctprice" Text=" Price*" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                    <asp:TextBox ID="txtProductPrice" CssClass="prdctpricetxt" runat="server" Width="215px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqprice" runat="server" CssClass="prdctpricereq" ControlToValidate="txtProductPrice" ValidationGroup="save" ErrorMessage="Please Enter Product Price" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regprice" runat="server" CssClass="prdctpricereq" ControlToValidate="txtProductPrice" ValidationGroup="save" ValidationExpression="((\d+)((\.\d{1,2})?))$" ErrorMessage="Enter Valid Price Only " ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:RegularExpressionValidator>


                    <asp:Label ID="lblProductColor" runat="server" CssClass="prdctclr" Text="Color" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <asp:TextBox ID="txtProductcolor" runat="server" CssClass="prdctclrtxt" Width="215px" Style="margin-left: 95px" Height="30px"></asp:TextBox>

                    <asp:Label ID="lblDesc" runat="server" Text="Description" CssClass="prdctdes" ForeColor="White" Font-Bold="true" Font-Size="X-Large"></asp:Label>

                    <asp:TextBox ID="txtDescription" runat="server" CssClass="prdctdestxt" Height="71px" Width="215px" Style="margin-left: 85px"></asp:TextBox>


                    &nbsp;<asp:Image ID="img" runat="server" CssClass="imgcss" Height="82px" Width="116px" />


                    <asp:Label ID="lblimg" runat="server" CssClass="prdctimg" Text="Image" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                    <asp:FileUpload ID="FileUpload" CssClass="prdctfile" runat="server" Height="30px" Style="margin-left: 39px" Width="192px" />

                    <asp:Button ID="imgupload" runat="server" CssClass="imgup" Text="Upload Image " Height="30px" Width="92px" OnClick="imgupload_Click" />


                    <asp:Button ID="imgcancel" runat="server" CssClass="imgcan" Text="Cancel Image" Height="30px" Width="95px" OnClick="imgcancel_Click" />



                    <asp:Label ID="lblmsg3" runat="server" CssClass="imgmsgcss" Visible="false" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:Label>



                    <asp:Button ID="btncancel2" runat="server" CssClass="prdctcancl" Text=" Cancel" Width="126px" Style="margin-left: 373px" Height="36px" OnClick="btncancel2_Click" />

                    <asp:Button ID="btnadd" runat="server" CssClass="prdctad" Text="Add" Width="126px" Style="margin-left: 0px" Height="36px" OnClick="btnadd_Click" />




                    <asp:Label ID="lblmsg2" CssClass="lblmsgcss" runat="server" Visible="false" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:Label>
                    <br />
                    <br />
                    <br />

                </div>

            </div>
        </div>

    </form>

</body>
</html>
