<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="CRUV.paginas.Mapa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
<div id="form" style="background:black">
        <div style="width:500px; margin-left:450px" class="card text-bg-secondary mb-2" >
             <div class="mb-6">
                <label for="exampleInputEmail1" class="form-label">Nombre</label>
                 <asp:TextBox class="form-control" ID="nom" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Dirección</label>
                <asp:TextBox class="form-control"  ID="direc" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp label for="disabledSelect" class="form-label">Latitud</asp>
                <input type="Text" id="lati" class="form-control" name="lati">
                
                <asp:TextBox class="form-control" ID="latitud" name="latitud" runat="server"></asp:TextBox>
            </div>
           <div class="mb-3">
                <label for="disabledSelect" class="form-label">Longitud</label>
                <input type="text" id="longi" class="form-control">
                <asp:TextBox class="form-control" ID="longitud" name="longitud" runat="server"></asp:TextBox>
           </div>
             <asp:Button class="btn btn-primary" ID="boton_reg" runat="server" Text="Registrar" OnClick="boton_reg_Click"></asp:Button>
        </div>
    </div>
 </form>
    <div id="map" style="background:red; width:100%; height:300px"></div>
    

    <script>
        const labels = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        let labelIndex = 0;

        var map;
        function initMap() {

            var latitud = 22.145283;
            var longitud = - 101.015192;

            coordenadas = {
                lng: longitud,
                lat: latitud,
            };

            generarMapa(coordenadas);

        }

        function generarMapa(coordenadas) {

            map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(coordenadas.lat, coordenadas.lng),
                zoom: 13,
            });
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(coordenadas.lat, coordenadas.lng),
                draggable: true,
                map: map,
                title: 'Mezcal'
            });
            var infowindow = new google.maps.InfoWindow({
                content: "<p>Coordenadas:" + marker.getPosition() + "</p>",
            });

            //Evento para tomar coordenadas al arrastrar
            marker.addListener('dragend', function (event) {
                
                document.getElementById("lati").value = this.getPosition().lat();
                document.getElementById("longi").value = this.getPosition().lng();
            })

            google.maps.event.addListener(map, "click", (event) => {
                addMarker(event.latLng, map);
            });
            addMarker(bangalore, map);
        }

        function addMarker(location, map) {
            new google.maps.Marker({
                position: location,
                label: labels[labelIndex++ % labels.length],
                map: map,
            });
        }

        window.initMap = initMap;
    </script>
</asp:Content>
