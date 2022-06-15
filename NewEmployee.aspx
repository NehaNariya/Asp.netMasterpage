<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.Master" AutoEventWireup="true" CodeBehind="NewEmployee.aspx.cs" Inherits="MockTestFinal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--body--%>
    <div class="row justify-content-center">
    <div class="col-md-6">
     <table class="table">
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                      <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" ForeColor="Red" runat="server" ErrorMessage="* Please Enter Name... "></asp:RequiredFieldValidator>
                      </td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                      <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ForeColor="red" runat="server" ErrorMessage="* Please Enter  valied  Email..." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </td>
                </tr>
                <tr>
                    <td>ContactNo :</td>
                    <td>
                        <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
                    </td>
              <%--        <td>
                        <asp:RangeValidator ID="RangeValidator1" 
                            ControlToValidate="txtcontactno"
                            Forecolor="red"
                            runat="server"
                            ErrorMessage="* Only 11 Digits">
                        </asp:RangeValidator>
                      </td>           --%>  
                </tr>
                <tr>
                    <td>Offered Salary :</td>
                    <td>
                        <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
                    </td>
            <%-- <td>
                        <asp:RangeValidator ID="RangeValidator2"
                            ControlToValidate="txtsalary"
                            Forecolor="red" runat="server"
                            ErrorMessage="* minimum Rs.10000 and maximum Rs. 150000">
                        </asp:RangeValidator>
             </td>--%>
<%--                    <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtsalary" Type="Integer" MaximumValue="10000" MinimumValue="150000" Forecolor="red" runat="server" ErrorMessage="* minimum Rs.10000 and maximum Rs. 150000"></asp:RangeValidator>--%>
                </tr>
                <tr align="center" >
                    <td>
                        <asp:Button ID="btninsert" runat="server" Text="Add Employee Detail" OnClick="btninsert_Click" />
                    </td>
                </tr>
            </table>
        </div>
        </div>

</asp:Content>
