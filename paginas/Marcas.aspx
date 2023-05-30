<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Marcas.aspx.cs" Inherits="CRUV.paginas.Marcas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="BAS" style="background:black">
    <form runat="server">
          <div style="width:900px;height:500px; margin-left:50px" class="card text-bg-secondary mb-1" >
             <div class="mb-6">
        <H2>Lugares donde se produce el Mezcal</H2>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                 </div>
              </div>
    </form>
         </div>
</asp:Content>
