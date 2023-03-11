<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEdicaoFicha.Master" AutoEventWireup="true" CodeBehind="EdicaoFicha.aspx.cs" Inherits="Ordem_Paranormal.Views.EdicaoFicha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ConteudoEdicao" runat="server">
    <div id="carouselExampleCaptions" class="carousel slide containerCarousel">
        <div class="carousel-indicators">
            <div class="alinharTitulos">
                <div>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
            </div>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active centro">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <img id="atributos" src="../Imagens/atributos.png">
                        </div>
                        <div class="col-md-6">
                            <nav class="navbar navbar-expand-lg navbar-dark">
                                <div class="container-fluid">
                                    <asp:DropDownList ID="ddlOrigem" runat="server"></asp:DropDownList>
                                    <asp:DropDownList ID="ddlClasse" runat="server">
                                        <asp:ListItem Text="Combatente" Value="Combatente"></asp:ListItem>
                                        <asp:ListItem Text="Especialista" Value="Especialista"></asp:ListItem>
                                        <asp:ListItem Text="Ocultista" Value="Ocultista"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="titulosCarousel">ATRIBUTOS, CLASSES, ORIGEM</h5>
                </div>
            </div>
            <div class="carousel-item centro">
                <h1>Segunda página do carrousel (Embarque nesse carousel)</h1>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Segundo Título</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item centro">
                <h1>Terceira página do carrousel (Embarque nesse carousel)</h1>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev zonaClick" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next zonaClick" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</asp:Content>
