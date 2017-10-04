Attribute VB_Name = "modImpressoraFiscal"
Option Explicit

'   ________________________________________________________________________________
'   \  ____________________________________________________________________________ \
'    \ \         ____    ____   __      __      ____     ____      ____   __       \ \
'     \ \       / ___\  / ___\ /\ \    /\_\    / __ \  /\___ \    / ___\ /\ \       \ \
'      \ \     /\ \__/ /\ \__/ \ \ \   \/\ \  /\ \_\ \ \/___\ \  /\ \__/ \ \ \       \ \
'       \ \    \ \  __\\ \  _\  \ \ \   \ \ \ \ \  __/   /\_ \ \ \ \  __\ \ \ \       \ \
'        \ \    \ \ \_/ \ \ \/   \ \ \   \ \ \ \ \ \/    \/_\ \ \ \ \ \_/  \ \ \       \ \
'         \ \    \ \ \   \ \ \___ \ \ \___\ \ \ \ \ \       _\_\ \ \ \ \    \ \ \___    \ \
'          \ \    \ \_\   \ \____\ \ \____\\ \_\ \ \_\     /\_____\ \ \_\    \ \____\    \ \
'           \ \    \/_/    \/____/  \/____/ \/_/  \/_/     \/_____/  \/_/     \/____/     \ \
'            \ \                                                                           \ \
'             \ \___________________________________________________________________________\ \
'              \_Felip3FL______________________________________________________________________\
'

' Fun��es de Inicializa��o
''Private Declare Function Bematech_FI_AlteraSimboloMoeda Lib "BEMAFI32.DLL" (ByVal SimboloMoeda As String) As Integer
''Private Declare Function Bematech_FI_ProgramaAliquota Lib "BEMAFI32.DLL" (ByVal Aliquota As String, ByVal ICMS_ISS As Integer) As Integer
''Private Declare Function Bematech_FI_ProgramaHorarioVerao Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_NomeiaDepartamento Lib "BEMAFI32.DLL" (ByVal Indice As Integer, ByVal Departamento As String) As Integer
''Private Declare Function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms Lib "BEMAFI32.DLL" (ByVal Indice As Integer, ByVal Totalizador As String) As Integer
''Private Declare Function Bematech_FI_ProgramaArredondamento Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ProgramaTruncamento Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_LinhasEntreCupons Lib "BEMAFI32.DLL" (ByVal Linhas As Integer) As Integer
''Private Declare Function Bematech_FI_EspacoEntreLinhas Lib "BEMAFI32.DLL" (ByVal Dots As Integer) As Integer
''Private Declare Function Bematech_FI_ForcaImpactoAgulhas Lib "BEMAFI32.DLL" (ByVal ForcaImpacto As Integer) As Integer
''' Fun��es do Cupom Fiscal
''Private Declare Function Bematech_FI_AbreCupom Lib "BEMAFI32.DLL" (ByVal CGC_CPF As String) As Integer
''Private Declare Function Bematech_FI_VendeItem Lib "BEMAFI32.DLL" (ByVal codigo As String, ByVal descricao As String, ByVal Aliquota As String, ByVal TipoQuantidade As String, ByVal Quantidade As String, ByVal CasasDecimais As Integer, ByVal ValorUnitario As String, ByVal TipoDesconto As String, ByVal Desconto As String) As Integer
''Private Declare Function Bematech_FI_CancelaItemAnterior Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_CancelaItemGenerico Lib "BEMAFI32.DLL" (ByVal NumeroItem As String) As Integer
''Private Declare Function Bematech_FI_CancelaCupom Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_FechaCupomResumido Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal Mensagem As String) As Integer
''Private Declare Function Bematech_FI_FechaCupom Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal DiscontoAcrecimo As String, ByVal TipoDescontoAcrecimo As String, ByVal ValorAcrecimoDesconto As String, ByVal ValorPago As String, ByVal Mensagem As String) As Integer
''Private Declare Function Bematech_FI_VendeItemDepartamento Lib "BEMAFI32.DLL" (ByVal codigo As String, ByVal descricao As String, ByVal Aliquota As String, ByVal ValorUnitario As String, ByVal Quantidade As String, ByVal Acrescimo As String, ByVal Desconto As String, ByVal IndiceDepartamento As String, ByVal UnidadeMedida As String) As Integer
''Private Declare Function Bematech_FI_AumentaDescricaoItem Lib "BEMAFI32.DLL" (ByVal descricao As String) As Integer
''Private Declare Function Bematech_FI_UsaUnidadeMedida Lib "BEMAFI32.DLL" (ByVal UnidadeMedida As String) As Integer
''Private Declare Function Bematech_FI_EstornoFormasPagamento Lib "BEMAFI32.DLL" (ByVal FormaOrigem As String, ByVal FormaDestino As String, ByVal Valor As String) As Integer
''Private Declare Function Bematech_FI_IniciaFechamentoCupom Lib "BEMAFI32.DLL" (ByVal AcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FI_EfetuaFormaPagamento Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal ValorFormaPagamento As String) As Integer
''Private Declare Function Bematech_FI_EfetuaFormaPagamentoDescricaoForma Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal ValorFormaPagamento As String, ByVal DescricaoOpcional As String) As Integer
''Private Declare Function Bematech_FI_TerminaFechamentoCupom Lib "BEMAFI32.DLL" (ByVal Mensagem As String) As Integer
''' Fun��es dos Relat�rios Fiscais
''Private Declare Function Bematech_FI_LeituraX Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_LeituraXSerial Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ReducaoZ Lib "BEMAFI32.DLL" (ByVal Data As String, ByVal hora As String) As Integer
''Private Declare Function Bematech_FI_RelatorioGerencial Lib "BEMAFI32.DLL" (ByVal cTexto As String) As Integer
''Private Declare Function Bematech_FI_RelatorioGerencialTEF Lib "BEMAFI32.DLL" (ByVal cTexto As String) As Integer
''Private Declare Function Bematech_FI_FechaRelatorioGerencial Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalData Lib "BEMAFI32.DLL" (ByVal cDataInicial As String, ByVal cDataFinal As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalReducao Lib "BEMAFI32.DLL" (ByVal cReducaoInicial As String, ByVal cReducaoFinal As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalSerialData Lib "BEMAFI32.DLL" (ByVal cDataInicial As String, ByVal cDataFinal As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalSerialReducao Lib "BEMAFI32.DLL" (ByVal cReducaoInicial As String, ByVal cReducaoFinal As String) As Integer
''' Fun��es das Opera��es N�o Fiscais
''Private Declare Function Bematech_FI_RecebimentoNaoFiscal Lib "BEMAFI32.DLL" (ByVal IndiceTotalizador As String, ByVal Valor As String, ByVal FormaPagamento As String) As Integer
''Private Declare Function Bematech_FI_AbreComprovanteNaoFiscalVinculado Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal Valor As String, ByVal Numerocupom As String) As Integer
''Private Declare Function Bematech_FI_UsaComprovanteNaoFiscalVinculado Lib "BEMAFI32.DLL" (ByVal Texto As String) As Integer
''Private Declare Function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF Lib "BEMAFI32.DLL" (ByVal Texto As String) As Integer
''Private Declare Function Bematech_FI_FechaComprovanteNaoFiscalVinculado Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_Sangria Lib "BEMAFI32.DLL" (ByVal Valor As String) As Integer
''Private Declare Function Bematech_FI_Suprimento Lib "BEMAFI32.DLL" (ByVal Valor As String, ByVal FormaPagamento As String) As Integer
''' Fun��es de Informa��o da Impressora
''Private Declare Function Bematech_FI_NumeroSerie Lib "BEMAFI32.DLL" (ByVal NumeroSerie As String) As Integer
''Private Declare Function Bematech_FI_SubTotal Lib "BEMAFI32.DLL" (ByVal SubTotal As String) As Integer
''Private Declare Function Bematech_FI_NumeroCupom Lib "BEMAFI32.DLL" (ByVal Numerocupom As String) As Integer
''Private Declare Function Bematech_FI_VersaoFirmware Lib "BEMAFI32.DLL" (ByVal VersaoFirmware As String) As Integer
''Private Declare Function Bematech_FI_CGC_IE Lib "BEMAFI32.DLL" (ByVal CGC As String, ByVal IE As String) As Integer
''Private Declare Function Bematech_FI_GrandeTotal Lib "BEMAFI32.DLL" (ByVal GrandeTotal As String) As Integer
''Private Declare Function Bematech_FI_Cancelamentos Lib "BEMAFI32.DLL" (ByVal ValorCancelamentos As String) As Integer
''Private Declare Function Bematech_FI_Descontos Lib "BEMAFI32.DLL" (ByVal ValorDescontos As String) As Integer
''Private Declare Function Bematech_FI_NumeroOperacoesNaoFiscais Lib "BEMAFI32.DLL" (ByVal NumeroOperacoes As String) As Integer
''Private Declare Function Bematech_FI_NumeroCuponsCancelados Lib "BEMAFI32.DLL" (ByVal NumeroCancelamentos As String) As Integer
''Private Declare Function Bematech_FI_NumeroIntervencoes Lib "BEMAFI32.DLL" (ByVal NumeroIntervencoes As String) As Integer
''Private Declare Function Bematech_FI_NumeroReducoes Lib "BEMAFI32.DLL" (ByVal NumeroReducoes As String) As Integer
''Private Declare Function Bematech_FI_NumeroSubstituicoesProprietario Lib "BEMAFI32.DLL" (ByVal NumeroSubstituicoes As String) As Integer
''Private Declare Function Bematech_FI_UltimoItemVendido Lib "BEMAFI32.DLL" (ByVal NumeroItem As String) As Integer
''Private Declare Function Bematech_FI_ClicheProprietario Lib "BEMAFI32.DLL" (ByVal Cliche As String) As Integer
''Private Declare Function Bematech_FI_NumeroCaixa Lib "BEMAFI32.DLL" (ByVal NumeroCaixa As String) As Integer
''Private Declare Function Bematech_FI_NumeroLoja Lib "BEMAFI32.DLL" (ByVal NumeroLoja As String) As Integer
''Private Declare Function Bematech_FI_SimboloMoeda Lib "BEMAFI32.DLL" (ByVal SimboloMoeda As String) As Integer
''Private Declare Function Bematech_FI_MinutosLigada Lib "BEMAFI32.DLL" (ByVal Minutos As String) As Integer
''Private Declare Function Bematech_FI_MinutosImprimindo Lib "BEMAFI32.DLL" (ByVal Minutos As String) As Integer
''Private Declare Function Bematech_FI_VerificaModoOperacao Lib "BEMAFI32.DLL" (ByVal Modo As String) As Integer
''Private Declare Function Bematech_FI_VerificaEpromConectada Lib "BEMAFI32.DLL" (ByVal Flag As String) As Integer
''Private Declare Function Bematech_FI_FlagsFiscais Lib "BEMAFI32.DLL" (ByRef Flag As Integer) As Integer
''Private Declare Function Bematech_FI_ValorPagoUltimoCupom Lib "BEMAFI32.DLL" (ByVal ValorCupom As String) As Integer
''Private Declare Function Bematech_FI_DataHoraImpressora Lib "BEMAFI32.DLL" (ByVal Data As String, ByVal hora As String) As Integer
''Private Declare Function Bematech_FI_ContadoresTotalizadoresNaoFiscais Lib "BEMAFI32.DLL" (ByVal Contadores As String) As Integer
''Private Declare Function Bematech_FI_VerificaTotalizadoresNaoFiscais Lib "BEMAFI32.DLL" (ByVal Totalizadores As String) As Integer
''Private Declare Function Bematech_FI_DataHoraReducao Lib "BEMAFI32.DLL" (ByVal Data As String, ByVal hora As String) As Integer
''Private Declare Function Bematech_FI_DataMovimento Lib "BEMAFI32.DLL" (ByVal Data As String) As Integer
''Private Declare Function Bematech_FI_VerificaTruncamento Lib "BEMAFI32.DLL" (ByVal Flag As String) As Integer
''Private Declare Function Bematech_FI_Acrescimos Lib "BEMAFI32.DLL" (ByVal ValorAcrescimos As String) As Integer
''Private Declare Function Bematech_FI_ContadorBilhetePassagem Lib "BEMAFI32.DLL" (ByVal ContadorPassagem As String) As Integer
''Private Declare Function Bematech_FI_VerificaAliquotasIss Lib "BEMAFI32.DLL" (ByVal AliquotasIss As String) As Integer
''Private Declare Function Bematech_FI_VerificaFormasPagamento Lib "BEMAFI32.DLL" (ByVal Formas As String) As Integer
''Private Declare Function Bematech_FI_VerificaRecebimentoNaoFiscal Lib "BEMAFI32.DLL" (ByVal Recebimentos As String) As Integer
''Private Declare Function Bematech_FI_VerificaDepartamentos Lib "BEMAFI32.DLL" (ByVal Departamentos As String) As Integer
''Private Declare Function Bematech_FI_VerificaTipoImpressora Lib "BEMAFI32.DLL" (ByRef tipoImpressora As Integer) As Integer
''Private Declare Function Bematech_FI_VerificaTotalizadoresParciais Lib "BEMAFI32.DLL" (ByVal cTotalizadores As String) As Integer
''Private Declare Function Bematech_FI_RetornoAliquotas Lib "BEMAFI32.DLL" (ByVal cAliquotas As String) As Integer
''Private Declare Function Bematech_FI_DadosUltimaReducao Lib "BEMAFI32.DLL" (ByVal DadosReducao As String) As Integer
''Private Declare Function Bematech_FI_MonitoramentoPapel Lib "BEMAFI32.DLL" (ByRef Linhas As String) As Integer
''Private Declare Function Bematech_FI_ValorFormaPagamento Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal Valor As String) As Integer
''Private Declare Function Bematech_FI_ValorTotalizadorNaoFiscal Lib "BEMAFI32.DLL" (ByVal Totalizador As String, ByVal Valor As String) As Integer
''' Fun��es de Autentica��o
''Private Declare Function Bematech_FI_Autenticacao Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ProgramaCaracterAutenticacao Lib "BEMAFI32.DLL" (ByVal Parametros As String) As Integer
''' Fun��es de Gaveta de Dinheiro
''Private Declare Function Bematech_FI_AcionaGaveta Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_VerificaEstadoGaveta Lib "BEMAFI32.DLL" (ByRef EstadoGaveta As Integer) As Integer
''' Fun��es de Impress�o de Cheques
''Private Declare Function Bematech_FI_ProgramaMoedaSingular Lib "BEMAFI32.DLL" (ByVal MoedaSingular As String) As Integer
''Private Declare Function Bematech_FI_ProgramaMoedaPlural Lib "BEMAFI32.DLL" (ByVal MoedaPlural As String) As Integer
''Private Declare Function Bematech_FI_CancelaImpressaoCheque Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_VerificaStatusCheque Lib "BEMAFI32.DLL" (ByRef StatusCheque As Integer) As Integer
''Private Declare Function Bematech_FI_ImprimeCheque Lib "BEMAFI32.DLL" (ByVal Banco As String, ByVal Valor As String, ByVal Favorecido As String, ByVal Cidade As String, ByVal Data As String, ByVal Mensagem As String) As Integer
''Private Declare Function Bematech_FI_IncluiCidadeFavorecido Lib "BEMAFI32.DLL" (ByVal Cidade As String, ByVal Favorecido As String) As Integer
''' Fun��es da Impressora Restaurante
''Private Declare Function Bematech_FIR_RegistraVenda Lib "BEMAFI32.DLL" (ByVal Mesa As String, ByVal codigo As String, ByVal descricao As String, ByVal Aliquota As String, ByVal Quantidade As String, ByVal ValorUnitario As String, ByVal FlagAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FIR_CancelaVenda Lib "BEMAFI32.DLL" (ByVal Mesa As String, ByVal codigo As String, ByVal descricao As String, ByVal Aliquota As String, ByVal Quantidade As String, ByVal ValorUnitario As String, ByVal FlagAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FIR_ConferenciaMesa Lib "BEMAFI32.DLL" (ByVal Mesa As String, ByVal FlagAcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FIR_AbreConferenciaMesa Lib "BEMAFI32.DLL" (ByVal Mesa As String) As Integer
''Private Declare Function Bematech_FIR_FechaConferenciaMesa Lib "BEMAFI32.DLL" (ByVal FlagAcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FIR_TransferenciaMesa Lib "BEMAFI32.DLL" (ByVal MesaOrigem As String, ByVal MesaDestino As String) As Integer
''Private Declare Function Bematech_FIR_AbreCupomRestaurante Lib "BEMAFI32.DLL" (ByVal Mesa As String, ByVal CGC_CPF As String) As Integer
''Private Declare Function Bematech_FIR_ContaDividida Lib "BEMAFI32.DLL" (ByVal NumeroCupons As String, ByVal ValorPago As String, ByVal CGC_CPF As String) As Integer
''Private Declare Function Bematech_FIR_FechaCupomContaDividida Lib "BEMAFI32.DLL" (ByVal NumeroCupons As String, ByVal FlagAcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String, ByVal FormasPagamento As String, ByVal ValorFormasPagamento As String, ByVal ValorPagoCliente As String, ByVal CGC_CPF As String) As Integer
''Private Declare Function Bematech_FIR_TransferenciaItem Lib "BEMAFI32.DLL" (ByVal MesaOrigem As String, ByVal codigo As String, ByVal descricao As String, ByVal Aliquota As String, ByVal Quantidade As String, ByVal ValorUnitario As String, ByVal FlagAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String, ByVal MesaDestino As String) As Integer
''Private Declare Function Bematech_FIR_RelatorioMesasAbertas Lib "BEMAFI32.DLL" (ByVal TipoRelatorio As String) As Integer
''Private Declare Function Bematech_FIR_ImprimeCardapio Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FIR_RelatorioMesasAbertasSerial Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FIR_CardapioPelaSerial Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FIR_RegistroVendaSerial Lib "BEMAFI32.DLL" (ByVal Mesa As String) As Integer
''Private Declare Function Bematech_FIR_VerificaMemoriaLivre Lib "BEMAFI32.DLL" (ByVal Bytes As String) As Integer
''Private Declare Function Bematech_FIR_FechaCupomRestaurante Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal DiscontoAcrecimo As String, ByVal TipoDescontoAcrecimo As String, ByVal ValorAcrecimoDesconto As String, ByVal ValorPago As String, ByVal Mensagem As String) As Integer
''Private Declare Function Bematech_FIR_FechaCupomResumidoRestaurante Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal Mensagem As String) As Integer
''' Fun��es de Bilhete de Passagem
''Private Declare Function Bematech_FI_AbreBilhetePassagem Lib "BEMAFI32.DLL" (ByVal ImprimeValorFinal As String, ByVal ImprimeEnfatizado As String, ByVal LocalEmbarque As String, ByVal Destino As String, ByVal Linha As String, ByVal Prefixo As String, ByVal Agente As String, ByVal Agencia As String, ByVal Data As String, ByVal hora As String, ByVal Poltrona As String, ByVal Plataforma As String) As Integer
''' Outras Fun��es
''Private Declare Function Bematech_FI_ResetaImpressora Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_AbrePortaSerial Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_VerificaEstadoImpressora Lib "BEMAFI32.DLL" (ByRef ACK As Integer, ByRef ST1 As Integer, ByRef ST2 As Integer) As Integer
''Private Declare Function Bematech_FI_RetornoImpressora Lib "BEMAFI32.DLL" (ByRef ACK As Integer, ByRef ST1 As Integer, ByRef ST2 As Integer) As Integer
''Private Declare Function Bematech_FI_FechaPortaSerial Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_VerificaImpressoraLigada Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_MapaResumo Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_RelatorioTipo60Analitico Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_RelatorioTipo60Mestre Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ImprimeConfiguracoesImpressora Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ImprimeDepartamentos Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_AberturaDoDia Lib "BEMAFI32.DLL" (ByVal Valor As String, ByVal FormaPagamento As String) As Integer
''Private Declare Function Bematech_FI_FechamentoDoDia Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ImpressaoCarne Lib "BEMAFI32.DLL" (ByVal Titulo As String, ByVal Percelas As String, ByVal Datas As Integer, ByVal Quantidade As Integer, ByVal Texto As String, ByVal Cliente As String, ByVal RG_CPF As String, ByVal cupom As String, ByVal Vias As Integer, ByVal Assina As Integer) As Integer
''Private Declare Function Bematech_FI_InfoBalanca Lib "BEMAFI32.DLL" (ByVal Porta As String, ByVal Modelo As Integer, ByVal Peso As String, ByVal PrecoKilo As String, ByVal Total As String) As Integer
''Private Declare Function Bematech_FI_DadosSintegra Lib "BEMAFI32.DLL" (ByVal DataInicial As String, ByVal DataFinal As String) As Integer
''Private Declare Function Bematech_FI_IniciaModoTEF Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_FinalizaModoTEF Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_VersaoDll Lib "BEMAFI32.DLL" (ByVal Versao As String) As Integer
''Private Declare Function Bematech_FI_RegistrosTipo60 Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_LeArquivoRetorno Lib "BEMAFI32.DLL" (ByVal Retorno As String) As Integer
''' Fun��es da Impressora Fiscal MFD
''Private Declare Function Bematech_FI_AbreCupomMFD Lib "BEMAFI32.DLL" (ByVal CGC As String, ByVal Nome As String, ByVal Endereco As String) As Integer
''Private Declare Function Bematech_FI_CancelaCupomMFD Lib "BEMAFI32.DLL" (ByVal CGC As String, ByVal Nome As String, ByVal Endereco As String) As Integer
''Private Declare Function Bematech_FI_ProgramaFormaPagamentoMFD Lib "BEMAFI32.DLL" (ByVal FormaPagto As String, ByVal OperacaoTef As String) As Integer
''Private Declare Function Bematech_FI_EfetuaFormaPagamentoMFD Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal ValorFormaPagamento As String, ByVal Parcelas As String, ByVal DescricaoFormaPagto As String) As Integer
''Private Declare Function Bematech_FI_CupomAdicionalMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_AcrescimoDescontoItemMFD Lib "BEMAFI32.DLL" (ByVal Item As String, ByVal AcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FI_NomeiaRelatorioGerencialMFD Lib "BEMAFI32.DLL" (ByVal Indice As String, ByVal descricao As String) As Integer
''Private Declare Function Bematech_FI_AutenticacaoMFD Lib "BEMAFI32.DLL" (ByVal Linhas As String, ByVal Texto As String) As Integer
''Private Declare Function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal Valor As String, ByVal Numerocupom As String, ByVal CGC As String, ByVal Nome As String, ByVal Endereco As String) As Integer
''Private Declare Function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_AbreRecebimentoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal CGC As String, ByVal Nome As String, ByVal Endereco As String) As Integer
''Private Declare Function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal IndiceTotalizador As String, ByVal ValorRecebimento As String) As Integer
''Private Declare Function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal AcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimo As String, ByVal ValorDesconto As String) As Integer
''Private Declare Function Bematech_FI_FechaRecebimentoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal Mensagem As String) As Integer
''Private Declare Function Bematech_FI_CancelaRecebimentoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal CGC As String, ByVal Nome As String, ByVal Endereco As String) As Integer
''Private Declare Function Bematech_FI_AbreRelatorioGerencialMFD Lib "BEMAFI32.DLL" (ByVal Indice As String) As Integer
''Private Declare Function Bematech_FI_UsaRelatorioGerencialMFD Lib "BEMAFI32.DLL" (ByVal Texto As String) As Integer
''Private Declare Function Bematech_FI_UsaRelatorioGerencialMFDTEF Lib "BEMAFI32.DLL" (ByVal Texto As String) As Integer
''Private Declare Function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_EstornoNaoFiscalVinculadoMFD Lib "BEMAFI32.DLL" (ByVal CGC As String, ByVal Nome As String, ByVal Endereco As String) As Integer
''Private Declare Function Bematech_FI_NumeroSerieMFD Lib "BEMAFI32.DLL" (ByVal NumeroSerie As String) As Integer
''Private Declare Function Bematech_FI_VersaoFirmwareMFD Lib "BEMAFI32.DLL" (ByVal VersaoFirmware As String) As Integer
''Private Declare Function Bematech_FI_CNPJMFD Lib "BEMAFI32.DLL" (ByVal CNPJ As String) As Integer
''Private Declare Function Bematech_FI_InscricaoEstadualMFD Lib "BEMAFI32.DLL" (ByVal InscricaoEstadual As String) As Integer
''Private Declare Function Bematech_FI_InscricaoMunicipalMFD Lib "BEMAFI32.DLL" (ByVal InscricaoMunicipal As String) As Integer
''Private Declare Function Bematech_FI_TempoOperacionalMFD Lib "BEMAFI32.DLL" (ByVal TempoOperacional As String) As Integer
''Private Declare Function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD Lib "BEMAFI32.DLL" (ByVal Minutos As String) As Integer
''Private Declare Function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD Lib "BEMAFI32.DLL" (ByVal Contadores As String) As Integer
''Private Declare Function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD Lib "BEMAFI32.DLL" (ByVal Totalizadores As String) As Integer
''Private Declare Function Bematech_FI_VerificaFormasPagamentoMFD Lib "BEMAFI32.DLL" (ByVal FormasPagamento As String) As Integer
''Private Declare Function Bematech_FI_VerificaRecebimentoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal Recebimentos As String) As Integer
''Private Declare Function Bematech_FI_VerificaRelatorioGerencialMFD Lib "BEMAFI32.DLL" (ByVal Relatorios As String) As Integer
''Private Declare Function Bematech_FI_ContadorComprovantesCreditoMFD Lib "BEMAFI32.DLL" (ByVal Comprovantes As String) As Integer
''Private Declare Function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD Lib "BEMAFI32.DLL" (ByVal OperacoesCanceladas As String) As Integer
''Private Declare Function Bematech_FI_ContadorRelatoriosGerenciaisMFD Lib "BEMAFI32.DLL" (ByVal Relatorios As String) As Integer
''Private Declare Function Bematech_FI_ContadorCupomFiscalMFD Lib "BEMAFI32.DLL" (ByVal CuponsEmitidos As String) As Integer
''Private Declare Function Bematech_FI_ContadorFitaDetalheMFD Lib "BEMAFI32.DLL" (ByVal ContadorFita As String) As Integer
''Private Declare Function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD Lib "BEMAFI32.DLL" (ByVal Comprovantes As String) As Integer
''Private Declare Function Bematech_FI_NumeroSerieMemoriaMFD Lib "BEMAFI32.DLL" (ByVal NumeroSerieMFD As String) As Integer
''Private Declare Function Bematech_FI_ReducoesRestantesMFD Lib "BEMAFI32.DLL" (ByVal Reducoes As String) As Integer
''Private Declare Function Bematech_FI_MarcaModeloTipoMFD Lib "BEMAFI32.DLL" (ByVal Marca As String, ByVal Modelo As String, ByVal Tipo As String) As Integer
''Private Declare Function Bematech_FI_VerificaTotalizadoresParciaisMFD Lib "BEMAFI32.DLL" (ByVal Totalizadores As String) As Integer
''Private Declare Function Bematech_FI_DadosUltimaReducaoMFD Lib "BEMAFI32.DLL" (ByVal DadosReducao As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalDataMFD Lib "BEMAFI32.DLL" (ByVal DataInicial As String, ByVal DataFinal As String, ByVal FlagLeitura As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalReducaoMFD Lib "BEMAFI32.DLL" (ByVal ReducaoInicial As String, ByVal ReducaoFinal As String, ByVal FlagLeitura As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD Lib "BEMAFI32.DLL" (ByVal DataInicial As String, ByVal DataFinal As String, ByVal FlagLeitura As String) As Integer
''Private Declare Function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD Lib "BEMAFI32.DLL" (ByVal ReducaoInicial As String, ByVal ReducaoFinal As String, ByVal FlagLeitura As String) As Integer
''Private Declare Function Bematech_FI_LeituraChequeMFD Lib "BEMAFI32.DLL" (ByVal CodigoCMC7 As String) As Integer
''Private Declare Function Bematech_FI_ImprimeChequeMFD Lib "BEMAFI32.DLL" (ByVal NumeroBanco As String, ByVal Valor As String, ByVal Favorecido As String, ByVal Cidade As String, ByVal Data As String, ByVal Mensagem As String, ByVal ImpressaoVerso As String, ByVal Linhas As String) As Integer
''Private Declare Function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD Lib "BEMAFI32.DLL" (ByVal FlagRetorno As String) As Integer
''Private Declare Function Bematech_FI_RetornoImpressoraMFD Lib "BEMAFI32.DLL" (ByRef ACK As Integer, ByRef ST1 As Integer, ByRef ST2 As Integer, ByRef ST3 As Integer) As Integer
''Private Declare Function Bematech_FI_AbreBilhetePassagemMFD Lib "BEMAFI32.DLL" (ByVal Embarque As String, ByVal Destino As String, ByVal Linha As String, ByVal Agencia As String, ByVal Data As String, ByVal hora As String, ByVal Poltrona As String, ByVal Plataforma As String, ByVal TipoPassagem As String, ByVal RGCliente As String, ByVal NomeCliente As String, ByVal EnderecoCliente As String, ByVal UFDetino As String) As Integer
''Private Declare Function Bematech_FI_CancelaAcrescimoDescontoItemMFD Lib "BEMAFI32.DLL" (ByVal cFlag As String, ByVal cItem As String) As Integer
''Private Declare Function Bematech_FI_SubTotalizaCupomMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_SubTotalizaRecebimentoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_TotalLivreMFD Lib "BEMAFI32.DLL" (ByVal cMemoriaLivre As String) As Integer
''Private Declare Function Bematech_FI_TamanhoTotalMFD Lib "BEMAFI32.DLL" (ByVal cTamMFD As String) As Integer
''Private Declare Function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD Lib "BEMAFI32.DLL" (ByVal cFlag As String, ByVal cTipo As String, ByVal cValor As String) As Integer
''Private Declare Function Bematech_FI_AcrescimoDescontoSubtotalMFD Lib "BEMAFI32.DLL" (ByVal cFlag As String, ByVal cTipo As String, ByVal cValor As String) As Integer
''Private Declare Function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD Lib "BEMAFI32.DLL" (ByVal cFlag As String) As Integer
''Private Declare Function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD Lib "BEMAFI32.DLL" (ByVal cFlag As String) As Integer
''Private Declare Function Bematech_FI_TotalizaCupomMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_TotalizaRecebimentoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_PercentualLivreMFD Lib "BEMAFI32.DLL" (ByVal cMemoriaLivre As String) As Integer
''Private Declare Function Bematech_FI_DataHoraUltimoDocumentoMFD Lib "BEMAFI32.DLL" (ByVal cDataHora As String) As Integer
''Private Declare Function Bematech_FI_MapaResumoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_RelatorioTipo60AnaliticoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ValorFormaPagamentoMFD Lib "BEMAFI32.DLL" (ByVal FormaPagamento As String, ByVal Valor As String) As Integer
''Private Declare Function Bematech_FI_ValorTotalizadorNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal Totalizador As String, ByVal Valor As String) As Integer
''Private Declare Function Bematech_FI_MarcaModeloTipoImpressoraMFD Lib "BEMAFI32.DLL" (ByVal Marca As String, ByVal Modelo As String, ByVal Tipo As String) As Integer
''Private Declare Function Bematech_FI_VerificaEstadoImpressoraMFD Lib "BEMAFI32.DLL" (ByRef ACK As Integer, ByRef ST1 As Integer, ByRef ST2 As Integer, ByRef ST3 As Integer) As Integer
''Private Declare Function Bematech_FI_IniciaFechamentoCupomMFD Lib "BEMAFI32.DLL" (ByVal AcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimo As String, ByVal ValorDesconto As String) As Integer
''Private Declare Function Bematech_FI_RelatorioSintegraMFD Lib "BEMAFI32.DLL" (ByVal Relatorios As Integer, ByVal Arquivo As String, ByVal Mes As String, ByVal cAno As String, ByVal RazaoSocial As String, ByVal Endereco As String, ByVal Numero As String, ByVal Complemento As String, ByVal Bairro As String, ByVal Cidade As String, ByVal CEP As String, ByVal Telefone As String, ByVal Fax As String, ByVal Contato As String) As Integer
''Private Declare Function Bematech_FI_GeraRelatorioSintegraMFD Lib "BEMAFI32.DLL" (ByVal Relatorios As Integer, ByVal ArquivoOrigem As String, ByVal ArquivoDestino As String, ByVal Mes As String, ByVal cAno As String, ByVal RazaoSocial As String, ByVal Endereco As String, ByVal Numero As String, ByVal Complemento As String, ByVal Bairro As String, ByVal Cidade As String, ByVal CEP As String, ByVal Telefone As String, ByVal Fax As String, ByVal Contato As String) As Integer
''Private Declare Function Bematech_FI_CancelaItemNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal NumeroItem As String) As Integer
''Private Declare Function Bematech_FI_AcrescimoItemNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal NumeroItem As String, ByVal AcrescimoDesconto As String, ByVal TipoAcrescimoDesconto As String, ByVal ValorAcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FI_CancelaAcrescimoNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal NumeroItem As String, ByVal AcrescimoDesconto As String) As Integer
''Private Declare Function Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD Lib "BEMAFI32.DLL" (ByVal cmensagem As String, ByVal cTipoCodigo As String, ByVal cCodigo As String, ByVal iAltura As Integer, ByVal iLargura As Integer, ByVal iPosicaoCaracteres As Integer, ByVal iFonte As Integer, ByVal iMargem As Integer, ByVal iCorrecaoErros As Integer, ByVal iColunas As Integer) As Integer
''Private Declare Function Bematech_FI_ImprimeClicheMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_ImprimeInformacaoChequeMFD Lib "BEMAFI32.DLL" (ByVal Posicao As Integer, ByVal Linhas As Integer, ByVal Mensagem As String) As Integer
''Private Declare Function Bematech_FI_DownloadMF Lib "BEMAFI32.DLL" (ByVal Arquivo As String) As Integer
''Private Declare Function Bematech_FI_DownloadMFD Lib "BEMAFI32.DLL" (ByVal Arquivo As String, ByVal TipoDownload As String, ByVal ParametroInicial As String, ByVal ParametroFinal As String, ByVal UsuarioECF As String) As Integer
''Private Declare Function Bematech_FI_FormatoDadosMFD Lib "BEMAFI32.DLL" (ByVal ArquivoOrigem As String, ByVal ArquivoDestino As String, ByVal TipoFormato As String, ByVal TipoDownload As String, ByVal ParametroInicial As String, ByVal ParametroFinal As String, ByVal UsuarioECF As String) As Integer
''' Fun��es dispon�veis somente na impressora fiscal MP-2000 TH FI vers�o 01.01.01 ou 01.00.02
''Private Declare Function Bematech_FI_AtivaDesativaVendaUmaLinhaMFD Lib "BEMAFI32.DLL" (ByVal iFlag As Integer) As Integer
''Private Declare Function Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD Lib "BEMAFI32.DLL" (ByVal iFlag As Integer) As Integer
''Private Declare Function Bematech_FI_AtivaDesativaCorteProximoMFD Lib "BEMAFI32.DLL" () As Integer
''Private Declare Function Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD Lib "BEMAFI32.DLL" (ByVal iFlag As Integer) As Integer
''Private Declare Function Bematech_FI_StatusEstendidoMFD Lib "BEMAFI32.DLL" (ByRef iStatus As Integer) As Integer
''Private Declare Function Bematech_FI_VerificaFlagCorteMFD Lib "BEMAFI32.DLL" (ByRef iFlag As Integer) As Integer
''Private Declare Function Bematech_FI_TempoRestanteComprovanteMFD Lib "BEMAFI32.DLL" (ByVal cTempo As String) As Integer
''Private Declare Function Bematech_FI_UFProprietarioMFD Lib "BEMAFI32.DLL" (ByVal cUF As String) As Integer
''Private Declare Function Bematech_FI_GrandeTotalUltimaReducaoMFD Lib "BEMAFI32.DLL" (ByVal cGT As String) As Integer
''Private Declare Function Bematech_FI_DataMovimentoUltimaReducaoMFD Lib "BEMAFI32.DLL" (ByVal cData As String) As Integer
''Private Declare Function Bematech_FI_SubTotalComprovanteNaoFiscalMFD Lib "BEMAFI32.DLL" (ByVal cSubTotal As String) As Integer
''Private Declare Function Bematech_FI_InicioFimCOOsMFD Lib "BEMAFI32.DLL" (ByVal cCOOIni As String, ByVal cCOOFim As String) As Integer
''Private Declare Function Bematech_FI_InicioFimGTsMFD Lib "BEMAFI32.DLL" (ByVal cGTIni As String, ByVal cGTFim As String) As Integer
''' Fun��o para Configura��o dos C�digos de Barras
''Private Declare Function Bematech_FI_ConfiguraCodigoBarrasMFD Lib "BEMAFI32.DLL" (ByVal Altura As Integer, ByVal Largura As Integer, ByVal PosicaoCaracteres As Integer, ByVal Fonte As Integer, ByVal margem As Integer) As Integer
''' Fun��es para Impress�o dos C�digos de Barras
''Private Declare Function Bematech_FI_CodigoBarrasUPCAMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasUPCEMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasEAN13MFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasEAN8MFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasCODE39MFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasCODE93MFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasCODE128MFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasITFMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasCODABARMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasISBNMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasMSIMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasPLESSEYMFD Lib "BEMAFI32.DLL" (ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_CodigoBarrasPDF417MFD Lib "BEMAFI32.DLL" (ByVal NivelCorrecaoErros As Integer, ByVal Altura As Integer, ByVal Largura As Integer, ByVal Colunas As Integer, ByVal codigo As String) As Integer
''Private Declare Function Bematech_FI_AcionaGuilhotinaMFD Lib "BEMAFI32.DLL" (ByVal TipoCorte As Integer) As Integer

    Global Retorno As Integer
    Global wValorRetorno As String
    Global wNumeroCupom As String * 6
    'Global CupomStatus As Boolean
    
    Private Const TipoDesconto = "$"
    Private Const casaDecimais = 2

Public Function VerificaRetornoImpressora(Label As String, RetornoFuncao As String, TituloJanela As String)
    
    Dim ACK As Integer
    Dim ST1 As Integer
    Dim ST2 As Integer
    Dim RetornaMensagem As Integer
    Dim StringRetorno As String
    Dim ValorRetorno As String
    Dim RetornoStatus As Integer
    Dim Mensagem As String
    
    'wVerificaImpressoraFiscal = False
    
    If Retorno = 0 Then
        MsgBox "Erro de comunica��o com a impressora.", vbOKOnly + vbCritical, TituloJanela
        Exit Function
    
    ElseIf Retorno = 1 Then
        'RetornoStatus = Bematech_FI_RetornoImpressora(ACK, ST1, ST2)
        'ValorRetorno = Str(ACK) & "," & Str(ST1) & "," & Str(ST2)
        
        If Label <> "" And RetornoFuncao <> "" Then
            RetornaMensagem = 1
        End If
        
        If ACK = 21 Then
            
            Exit Function
        End If
        
        If (ST1 <> 0 Or ST2 <> 0) Then
                If (ST1 >= 128) Then
                    StringRetorno = "Fim de Papel" & vbCr
                    ST1 = ST1 - 128
                End If
                
                If (ST1 >= 64) Then
                    StringRetorno = StringRetorno & "Pouco Papel" & vbCr
                    ST1 = ST1 - 64
                End If
                
                If (ST1 >= 32) Then
                    StringRetorno = StringRetorno & "Erro no rel�gio" & vbCr
                    ST1 = ST1 - 32
                End If
                
                If (ST1 >= 16) Then
                    StringRetorno = StringRetorno & "Impressora em erro" & vbCr
                    ST1 = ST1 - 16
                End If
                    
                If (ST1 >= 8) Then
                    StringRetorno = StringRetorno & "Primeiro dado do comando n�o foi Esc" & vbCr
                    ST1 = ST1 - 8
                End If
                
                If (ST1 >= 4) Then
                    StringRetorno = StringRetorno & "Comando inexistente" & vbCr
                    ST1 = ST1 - 4
                End If
                    
                If (ST1 >= 2) Then
                    StringRetorno = StringRetorno & "Cupom fiscal aberto" & vbCr
                    ST1 = ST1 - 2
                End If
                
                If (ST1 >= 1) Then
                    StringRetorno = StringRetorno & "N�mero de par�metros inv�lido no comando" & vbCr
                    ST1 = ST1 - 1
                End If
                    
                If (ST2 >= 128) Then
                    StringRetorno = "Tipo de Par�metro de comando inv�lido" & vbCr
                    ST2 = ST2 - 128
                End If
                
                If (ST2 >= 64) Then
                    StringRetorno = StringRetorno & "Mem�ria fiscal lotada" & vbCr
                    ST2 = ST2 - 64
                End If
                
                If (ST2 >= 32) Then
                    StringRetorno = StringRetorno & "Erro na CMOS" & vbCr
                    ST2 = ST2 - 32
                End If
                
                If (ST2 >= 16) Then
                    StringRetorno = StringRetorno & "Al�quota n�o programada" & vbCr
                    ST2 = ST2 - 16
                End If
                    
                If (ST2 >= 8) Then
                    StringRetorno = StringRetorno & "Capacidade de al�quota program�veis lotada" & vbCr
                    ST2 = ST2 - 8
                End If
                
                If (ST2 >= 4) Then
                    StringRetorno = StringRetorno & "Cancelamento n�o permitido" & vbCr
                    ST2 = ST2 - 4
                End If
                    
                If (ST2 >= 2) Then
                    StringRetorno = StringRetorno & "CGC/IE do propriet�rio n�o programados" & vbCr
                    ST2 = ST2 - 2
                End If
                
                If (ST2 >= 1) Then
                   
                    ST2 = ST2 - 1
                End If
                
                If RetornaMensagem Then
                    Mensagem = "Status da Impressora: " & ValorRetorno & _
                           vbCr & vbLf & StringRetorno & vbCr & vbLf & _
                           Label & RetornoFuncao
                Else
                    Mensagem = "Status da Impressora: " & ValorRetorno & _
                       vbCr & vbLf & StringRetorno
                End If
                
                wValorRetorno = ValorRetorno
                Debug.Print Mensagem & " " & vbInformation & " " & TituloJanela
                Exit Function
        End If 'fim do ST1 <> 0 and ST2 <> 0
        
        If RetornaMensagem Then
            Mensagem = Label & RetornoFuncao
        End If
        
        If Mensagem <> "" Then
            MsgBox Mensagem, vbOKOnly + vbInformation, TituloJanela
        End If
        Exit Function
    ElseIf Retorno = -1 Then
        'MsgBox "Erro de execu��o da fun��o.", vbOKOnly + vbCritical, TituloJanela
        Exit Function
    ElseIf Retorno = -2 Then
        MsgBox "Par�metro inv�lido na fun��o.", vbOKOnly + vbExclamation, TituloJanela
        Exit Function
    ElseIf Retorno = -3 Then
        MsgBox "Al�quota n�o programada.", vbOKOnly + vbExclamation, TituloJanela
        Exit Function
    ElseIf Retorno = -4 Then
        MsgBox "O arquivo de inicializa��o BemaFI32.ini n�o foi encontrado no diret�rio default. " + vbCr + "Por favor, copie esse arquivo para o diret�rio de sistema do Windows." + vbCr + "Se for o Windows 95 ou 98 � o diret�rio 'System' se for o Windows NT � o diret�rio 'System32'.", vbOKOnly + vbExclamation, TituloJanela
        Exit Function
    ElseIf Retorno = -5 Then
        MsgBox "Erro ao abrir a porta de comunica��o.", vbOKOnly + vbExclamation, TituloJanela
        'Retorno = Bematech_FI_ResetaImpressora()
        Exit Function
    ElseIf Retorno = -6 Then
        MsgBox "Impressora desligada ou cabo de comunica��o desconectado.", vbOKOnly + vbExclamation, TituloJanela
        Exit Function
    ElseIf Retorno = -7 Then
        MsgBox "Banco n�o encontrado no arquivo BemaFI32.ini.", vbOKOnly + vbExclamation, TituloJanela
        Exit Function
    ElseIf Retorno = -8 Then
        MsgBox "Erro ao criar ou gravar no arquivo status.txt ou retorno.txt.", vbOKOnly + vbExclamation, TituloJanela
        Exit Function
    End If
    'wVerificaImpressoraFiscal = True
   
End Function



Public Function CupomVerificaStatus() As Boolean
    CupomVerificaStatus = True
  
    'Retorno = Bematech_FI_AbrePortaSerial()
    'Call VerificaRetornoImpressora("", "", "BemaFI32")
    If Retorno <> 1 Then
        MsgBox "Falha ao se conectar a impressora de Cupom Fiscal" & vbNewLine & _
               "Verifique se impressora est� Ligada e conectada ao computador!", vbCritical, "Erro Impressora de Cupom Fiscal"
        'Retorno = Bematech_FI_FechaPortaSerial()
        CupomVerificaStatus = False
       
    End If
End Function


'Public Function CupomCriaItem(descricao As String, _
'                          codigo As String, _
'                          Aliquota As String, _
'                          QTDE As String, _
'                          precoVenda As String) As Boolean
'
'    'If CupomStatus = False Then Exit Function
'
'    'Retorno = Bematech_FI_AumentaDescricaoItem(descricao)
'
'    'Call VerificaRetornoImpressora("", "", "Emiss�o de Cupom Fiscal")
'
'    'Retorno = Bematech_FI_VendeItem(codigo, descricao, _
'        Aliquota, "I", QTDE, casaDecimais, _
'        (precoVenda * 100), TipoDesconto, "0")
'
'    'Call VerificaRetornoImpressora("", "", "Emiss�o de Cupom Fiscal")
'    'Retorno = 1
'
'End Function

Public Function CupomLeituraX() As Boolean
    'Retorno = Bematech_FI_LeituraX()
    'Call VerificaRetornoImpressora("", "", "Leitura X")
    MsgBox "LEITURA X", vbInformation
End Function

Public Function CupomCancela() As Boolean
    'Retorno = Bematech_FI_CancelaCupom()
    'Call VerificaRetornoImpressora("", "", "Emiss�o de Cupom Fiscal")
    vendaAberta = False
End Function



Public Function CupomLeituraZ() As Boolean
    'Retorno = Bematech_FI_ReducaoZ("", "")
    'Call VerificaRetornoImpressora("", "", "Redu��o Z")
    MsgBox "LEITURA Z", vbInformation
End Function

Public Function CupomIniciaFechamento() As Boolean
    'Retorno = Bematech_FI_IniciaFechamentoCupom("D", "$", 0)
    'Call VerificaRetornoImpressora("", "", "Emiss�o de Cupom Fiscal")
End Function

Public Function cupomTerminaFechamento(adicionaisECF As String) As Boolean
    'Retorno = Bematech_FI_TerminaFechamentoCupom(adicionaisECF)
    'Call VerificaRetornoImpressora("", "", "Emiss�o de Cupom Fiscal")
End Function
