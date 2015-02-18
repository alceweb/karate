<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
<table class="tbl2">
<caption>Per leggere il materiale è necessario disporre di 
<a href="http://get.adobe.com/it/reader/" style="color:navy" target="_blank">Acrobat Reader ©</a>.</caption>
<thead>
<tr>
   <th style="width: 109px">&nbsp;</th>
   <th>Descrizione contenuto</th>
   <th style="text-align:center" >PDF</th>
</tr>
</thead>
	<tbody>
		<tr>
			<td >Esami kyu</td>
			<td>Tutti i programmi di tutti gli esami di passaggio di kyu del 
			gruppo shotokenshukai</td>
			<td ><a href="Download/ProgrammaEsami.pdf">
			<img alt="" src="Immagini/icona_pdf.jpg" /></a></td>
		</tr>
		<tr class="odd">
		   <td >Società</td>
		   <td>Satuto completo della società</td>
		   <td class="auto-style1"><a href="Download/Statuto.pdf">
		   <img alt="" src="Immagini/icona_pdf.jpg" /></a></td>
		</tr>
		<tr>
		   <td style="width: 109px">Società</td>
		   <td>Atto di costituzione della società</td>
		   <td ><a href="Download/AttoCostitutivo.pdf">
		   <img alt="" src="Immagini/icona_pdf.jpg"/></a></td>
		</tr>
		<tr class="odd">
		   <td >Società</td>
		   <td>Attribuzione C.F. dall&#39;agenzia delle entrate di Treviglio</td>
		   <td >
			   <a href="Download/AttribuzioneCF.pdf"><img alt="" src="Immagini/icona_pdf.jpg" /></a>
		   </td>
		
		</tr>
		<tr>
		   <td >Visita medica</td>
		   <td>Modulo della <em>"Direzione Generale Sanità U.O. Prevenzione"</em> della 
		   regione Lombardia per la 
		   richiesta della visita medica.<br />
		   Il modulo deve essere stampato e portato in palestra per essere 
		   firmato.<br />
               Serve a chi ha un'età compresa fra 11 e 18 ani per avere la 
		   visita gratuita e agli agonisti per pagare la cifra ridotta (dovrebbe 
		   essere circa 60 euro).<br />
		   Ricordarsi di stampare e compilare e portare alla visita anche la scheda <a style="color:navy" href="Download/SchedaAnamnesi.pdf">
		   anamnesi</a>.</td>
		   <td class="auto-style1"><a href="Download/VisitaMedica.pdf">
		   <img alt="" src="Immagini/icona_pdf.jpg" /></a></td>
		</tr>
		<tr class="odd">
		   <td >Scheda anamnesi</td>
		   <td>Scheda anamnesi da presentare allo <em>"Sportmans Center"</em> per&nbsp; 
		   avere la visita gratuita per gli atleti da 11 a 18 anni.</td>
		   <td ><a href="Download/SchedaAnamnesi.pdf">
		   <img alt="" src="Immagini/icona_pdf.jpg" /></a></td>
		</tr>
	</tbody>
</table>			

</asp:Content>

