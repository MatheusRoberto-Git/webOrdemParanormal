<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageFichasMestre.Master" AutoEventWireup="true" CodeBehind="telaFichasMestre.aspx.cs" Inherits="Ordem_Paranormal.Views.telaFichasMestre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row">
        <div class="col-12 containerFicha">
            <div class="tituloResistencias">
                <div id="tituloResParanormal" class="tituloStatus">Res.Paranormal</div>
                <div id="tituloResFisica" class="tituloStatus">Res.Física</div>
            </div>
            <div class="btnResistencias">
                <!-- Button trigger modal resistência paranormal-->
                <img
                    src="../Imagens/ResistenciaParanormal.png"
                    id="imgResistenciaParanormal"
                    class="btn btnResistenciaParanormal"
                    data-toggle="modal"
                    data-target="#ModalResistenciaParanormal" />
                <!-- Modal resistência paranormal-->
                <div class="modal fade" id="ModalResistenciaParanormal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content cardModal">
                            <div class="modal-body">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h3 class="modal-title centralizarTitulos" id="exampleModalLabel">Resistências Paranormais</h3>
                                <div>
                                    <div class="resistenciaParanormal">
                                        <div class="resistenciaParanormalLinha1">
                                            <div>
                                                Morte:
                        <input type="text" class="quantStatusResistenciaParanormal" />
                                            </div>
                                            <div>
                                                Sangue:
                        <input type="text" class="quantStatusResistenciaParanormal" />
                                            </div>
                                        </div>

                                        <div class="resistenciaParanormalLinha2">
                                            <div>
                                                Energia:
                        <input type="text" class="quantStatusResistenciaParanormal" />
                                            </div>
                                            <div>
                                                Conhecimento:
                        <input type="text" class="quantStatusResistenciaParanormal" />
                                            </div>
                                        </div>

                                        <div class="resistenciaParanormalMedo">
                                            <div>
                                                Medo:
                        <input type="text" class="quantStatusResistenciaParanormal" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Button trigger modal resistência física-->
                <img
                    src="../Imagens/ResistenciaFisica.png"
                    id="imgResistenciaFisica"
                    class="btn btnResistenciaFisica"
                    data-toggle="modal"
                    data-target="#ModalResistenciaFisica" />
                <!-- Modal resistência física-->
                <div class="modal fade" id="ModalResistenciaFisica" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content cardModal">
                            <div class="modal-body">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h3 class="modal-title centralizarTitulos" id="exampleModalLabel">Resistências Físicas</h3>
                                <div class="organizacaoColuna">
                                    <div class="resistenciaFisicaEsquerdo">
                                        <div>
                                            Balistica:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Corte:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Eletricidade:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Impacto:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Fogo:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                    </div>

                                    <div class="resistenciaFisicaDireito">
                                        <div>
                                            Frio:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Perfuração:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Paranormal:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Mental:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                        <div>
                                            Química:
                      <input type="text" class="quantStatusResistenciaFisica" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Button redirecionar página-->
                <a href="EdicaoFicha.aspx">
                    <img src="../Imagens/editar.png" class="btn btnResistenciaParanormal" />
                </a>
            </div>

            <div class="img-nomes">
                <img src="../Imagens/avatar2.png" class="avatar" onclick="selecionarImagem()" />
                <div class="containerJogador-Personagem">
                    <div class="Jogador-Personagem">
                        <input type="text" class="nomeJogador-Personagem" />
                        <h4>Personagem</h4>
                    </div>
                    <div class="Jogador-Personagem">
                        <input type="text" class="nomeJogador-Personagem" />
                        <h4>Jogador</h4>
                    </div>
                </div>
            </div>

            <div class="orgm-class">
                <div id="containerOrigem-Classe-Origem" class="containerOrigem-Classe">
                    <div class="Origem-Classe">
                        <div class="nomeOrigem-Classe">
                            <input type="text" readonly id="txtOrigem" runat="server" class="inputSql" />
                        </div>
                        <h4>Origem</h4>
                    </div>
                </div>
                <div class="containerOrigem-Classe">
                    <div class="Origem-Classe">
                        <div class="nomeOrigem-Classe">
                            <input type="text" readonly id="txtClasse" runat="server" class="inputSql" />
                        </div>
                        <h4>Classe</h4>
                    </div>
                </div>
            </div>

            <div class="status">
                <div id="tituloVida" class="tituloStatus">Vida</div>
                <div class="status-vida">
                    <img id="heart" src="../Imagens/Life.png" />
                    <img src="../Imagens/setaMenos1.png" id="heartMinusOne" class="buttonStatusLife" />
                    <img src="../Imagens/setaMenos5.png" id="heartMinusFive" class="buttonStatusLife" />
                    <img src="../Imagens/setaMenos10.png" id="heartMinusTen" class="buttonStatusLife" />
                    <div class="progressLife">
                        <div class="barLife" id="barraVida"></div>
                    </div>
                    <img src="../Imagens/setaMais1.png" id="heartPlusOne" class="buttonStatusLife" />
                    <img src="../Imagens/setaMais5.png" id="heartPlusFive" class="buttonStatusLife" />
                    <img src="../Imagens/setaMais10.png" id="heartPlusTen" class="buttonStatusLife" />
                </div>

                <div id="tituloSanidade" class="tituloStatus">Sanidade</div>
                <div class="status-sanidade">
                    <img id="sanity" src="../Imagens/cerebro.png" />
                    <img src="../Imagens/setaMenos1.png" id="sanityMinusOne" class="buttonStatusSanity" />
                    <img src="../Imagens/setaMenos5.png" id="sanityMinusFive" class="buttonStatusSanity" />
                    <img src="../Imagens/setaMenos10.png" id="sanityMinusTen" class="buttonStatusSanity" />
                    <div class="progressSanity">
                        <div class="barSanity" id="barraSanidade"></div>
                    </div>
                    <img src="../Imagens/setaMais1.png" id="sanityPlusOne" class="buttonStatusSanity" />
                    <img src="../Imagens/setaMais5.png" id="sanityPlusFive" class="buttonStatusSanity" />
                    <img src="../Imagens/setaMais10.png" id="sanityPlusTen" class="buttonStatusSanity" />
                </div>

                <div id="tituloPeRodada" class="tituloStatus">PE/Rodada</div>
                <div class="status-peRodada">
                    <img id="peRodada" src="../Imagens/musculo1.png" />
                    <img src="../Imagens/setaMenos1.png" id="peRodadaMinusOne" class="buttonStatusPeRodada" />
                    <img src="../Imagens/setaMenos5.png" id="peRodadaMinusFive" class="buttonStatusPeRodada" />
                    <img src="../Imagens/setaMenos10.png" id="peRodadaMinusTen" class="buttonStatusPeRodada" />
                    <div class="progressPeRodada">
                        <div class="barPeRodada" id="barraPeRodada"></div>
                    </div>
                    <img src="../Imagens/setaMais1.png" id="peRodadaPlusOne" class="buttonStatusPeRodada" />
                    <img src="../Imagens/setaMais5.png" id="peRodadaPlusFive" class="buttonStatusPeRodada" />
                    <img src="../Imagens/setaMais10.png" id="peRodadaPlusTen" class="buttonStatusPeRodada" />
                </div>

                <div id="tituloPeTotal" class="tituloStatus">PE/Total</div>
                <div class="status-peTotal">
                    <img id="peTotal" src="../Imagens/corpo1.png" />
                    <img src="../Imagens/setaMenos1.png" id="peTotalMinusOne" class="buttonStatusPeTotal" />
                    <img src="../Imagens/setaMenos5.png" id="peTotalMinusFive" class="buttonStatusPeTotal" />
                    <img src="../Imagens/setaMenos10.png" id="peTotalMinusTen" class="buttonStatusPeTotal" />
                    <div class="progressPeTotal">
                        <div class="barPeTotal" id="barraPeTotal"></div>
                    </div>
                    <img src="../Imagens/setaMais1.png" id="peTotalPlusOne" class="buttonStatusPeTotal" />
                    <img src="../Imagens/setaMais5.png" id="peTotalPlusFive" class="buttonStatusPeTotal" />
                    <img src="../Imagens/setaMais10.png" id="peTotalPlusTen" class="buttonStatusPeTotal" />
                </div>
            </div>


            <div class="defensivos">
                <div class="status-defensivos">
                    <div id="tituloDefesa" class="tituloDefensivos">Defesa</div>
                    <div>
                        <img id="defesa" src="../Imagens/escudo.png" />
                        <input type="text" class="quantStatusDefensivos" />
                    </div>
                </div>

                <div class="status-defensivos">
                    <div id="tituloReflexo" class="tituloDefensivos">Reflexo</div>
                    <div>
                        <img id="reflexo" src="../Imagens/reflexo1.png" />
                        <input type="text" class="quantStatusDefensivos" />
                    </div>
                </div>

                <div class="status-defensivos">
                    <div id="tituloBloqueio" class="tituloDefensivos">Bloqueio</div>
                    <div>
                        <img id="bloqueio" src="../Imagens/bloqueio.png" />
                        <input type="text" class="quantStatusDefensivos" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- Scripts Globais --%>
    <script type="text/javascript" src="../JS/scriptHoversTitulos.js"></script>
    <script type="text/javascript" src="../JS/scriptSelecionarAvatar.js"></script>
    <script type="text/javascript" src="../JS/scriptStatusPeRodada.js"></script>
    <script type="text/javascript" src="../JS/scriptStatusPeTotal.js"></script>
    <script type="text/javascript" src="../JS/scriptStatusSanidade.js"></script>
    <script type="text/javascript" src="../JS/scriptStatusVida.js"></script>

</asp:Content>
