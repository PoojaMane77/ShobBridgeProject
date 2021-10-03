<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ViewProduct.aspx.cs" Inherits="thinkbridge.ViewProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
        #form1 {
            height: 1000px;
            background-position: center center;
            margin: 0px 0px 0px 0px;
            background-image: url('Images/image16.jpg');
            width: 10000px;
            height: 10000px;
            padding: 0px 0px 0px 0px;
        }

        .gvmsgcss {
            position: absolute;
            top: 550px;
            right: 800px;
        }

        .prdctlogout2 {
            position: absolute;
            top: 50px;
            right: 100px;
        }

        .prdcthome {
            position: absolute;
            top: 50px;
            left: 90px;
        }
    </style>
</head>
<body>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-xs-12"   background-image: url('Images/image16.jpg');   >
                <div class="col-md-4">
                    <div class="col-md-12">
                        <br />
                        <br />

                        <asp:Button ID="btnhome2" runat="server" Text="Home"  CssClass="prdcthome"   Width="97px" Style="margin-left: 101px" Height="36px" OnClick="btnhome2_Click" />

                        <asp:Button ID="btnlogout2" runat="server" CssClass="prdctlogout2"   Text="log Out" Width="97px" Style="margin-left: 560px" Height="36px" OnClick="btnlogout2_Click" />
                        <br />
                        <br />
                    </div>
                    <div class="col-md-12">
                      
                    </div>
                </div>
                <br />
                <asp:TextBox ID="txtSearch" runat="server" Width="287px" Style="margin-left: 171px; margin-right: 28px" Height="30px"></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="Search " Width="89px" OnClick="btnSearch_Click" Height="36px" />
                <asp:GridView ForeColor="White" Font-Bold="true" Font-Size="Large" ID="gvProducts"  AutoGenerateColumns="false"   AllowPaging="True" PageSize="3"  OnPageIndexChanging="gvProducts_PageIndexChanging" OnRowEditing="gvProducts_RowEditing" OnRowUpdating="gvProducts_RowUpdating" OnRowCancelingEdit="gvProducts_RowCancelingEdit" OnRowDeleting="gvProducts_RowDeleting" runat="server" Width="446px" Style="margin-left: 171px; margin-top: 72px; margin-right: 108px;" Height="201px">
                    <Columns >
                        <asp:TemplateField HeaderText="Product Id" Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblProductid"  Text='<%#Eval("ProductId") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField  HeaderText="Product Name"  >
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblProductName" Text='<%#Eval("ProductName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtProductName" runat="server" Text='<%#Bind("ProductName") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Category ">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblcat" Text='<%#Eval("Category") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtcat" runat="server" Text='<%#Bind("Category") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText=" Brand ">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblbrand" Text='<%#Eval("Brand") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtbrand" runat="server" Text='<%#Bind("Brand") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Size ">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblsize" Text='<%#Eval("Size") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtsize" runat="server" Text='<%#Bind("Size") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblprice" Text='<%#Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtprice" runat="server" Text='<%#Bind("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlbldesc" Text='<%#Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtdesc" runat="server" Text='<%#Bind("Description") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Color">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblclr" Text='<%#Eval("Color") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="gvtxtclr" runat="server" Text='<%#Bind("Color") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Image">
                          <%--  <ItemTemplate>
                                <asp:Label runat="server" ID="gvlblimg" Text='<%#Eval("Image") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%--<asp:TextBox ID="gvtxtimg" runat="server" Text='<%#Bind("Image") %>'></asp:TextBox>--%>
                               <%-- <asp:Image ID="gvimg" runat="server"  />
                            </EditItemTemplate>--%>

                              <ItemTemplate>  
                            <asp:Image ID="gvimg" runat="server" Height="50px" Width="100%" ImageUrl='<%# Eval("Image") %>' />  
                        </ItemTemplate>  
                        <EditItemTemplate>  
                            <asp:Image ID="gvimgedit" runat="server" ImageUrl='<%# Bind("Image") %>'  
                                Height="80px" Width="100px" /><br />  
                            <asp:FileUpload ID="gvfileupload" runat="server" />  
                        </EditItemTemplate> 
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" />
                                <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btn_del" runat="server" Text="delete" CommandName="delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    
       <asp:Label ID="lblupdate" Visible="false"  CssClass="gvmsgcss" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Medium" />
    </form>
</body>
</html>
