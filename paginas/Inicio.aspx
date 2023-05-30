<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CRUV.paginas.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bodyp" style="background:black; margin-top:0%">
<div id="carouselExample"  class="carousel slide, col-sm-6" style=" background:black;margin-left:20%; color:black">
    <div id="carouselExampleFade" class="carousel slide carousel-fade" style="background:black">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/1.jpeg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/2.jpeg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
               <img src="img/3.jpg" class="d-block w-100" alt="...">
            </div>
     <div class="carousel-item">
      <img src="img/4.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/5.jpg" class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="img/6.jpg" class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="img/7.jpg" class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="img/8.jpg" class="d-block w-100" alt="...">
    </div>

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>

  </div>
</div>
</div>

</asp:Content>
