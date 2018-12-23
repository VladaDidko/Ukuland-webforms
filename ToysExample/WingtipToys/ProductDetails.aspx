<%@ Page Title="Дополнительная информация" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ProductDetails.aspx.cs" Inherits="WingtipToys.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="productDetail" runat="server" ItemType="WingtipToys.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="/Catalog/Images/<%#:Item.ImagePath %>" style="border:solid; height:300px" alt="<%#:Item.ProductName %>"/>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left; padding-left: 30px;">
                        <br /><%#:Item.Description %>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
           <div class="container1">
            <form>
                <div class="form-group">
                <textarea class="form-control status-box" rows="3" placeholder="Enter your comment here..."></textarea>
                </div>
            </form>
            <div class="button-group pull-right">
                <p class="counter">250</p>
                <a href="#" class="btn btn-primary">Post</a>
            </div>
            <ul class="posts">
            </ul>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>