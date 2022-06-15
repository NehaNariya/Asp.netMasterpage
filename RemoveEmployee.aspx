<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.Master" AutoEventWireup="true" CodeBehind="RemoveEmployee.aspx.cs" Inherits="MockTestFinal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row justify-content-center">
    <div class="col-md-6">
     <table class="table">
   
            <!--    <tr>
                    <td>Employee Name:</td>
                    <td>
                        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                    </td>
                </tr>-->
         <tr>
             <td>EmpId : </td>
             <td>
                 <asp:TextBox ID="txtEmpid" runat="server"></asp:TextBox>
             </td>
         </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Employee Detail" onClick="btnDelete_Click" />
                    </td>
                </tr>
            </table>
        </div>
        </div>

</asp:Content>
