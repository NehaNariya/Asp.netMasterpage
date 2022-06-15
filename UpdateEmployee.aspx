<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.Master" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="MockTestFinal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Body-->

    <div class="row justify-content-center">
        <div class="col-md-6">
            <table class="table">
                <tr>
                    <td>EmpID :</td>
                    <td>
                        <asp:TextBox ID="txtempid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>ContactNo :</td>
                    <td>
                        <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Offered Salary :</td>
                    <td>
                        <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Employee Detail" OnClick="btnUpdate_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
