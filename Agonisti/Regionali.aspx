<%@ Page Title="Regionali 2015" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Regionali.aspx.cs" Inherits="Agonisti_Regionali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .btn {
            background-color:#628A81;
            color:white;
            height:30px;
            border-radius:10px;
        }

.font7
	{color:windowtext;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Comic Sans MS", cursive;
	}
.font5
	{color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Comic Sans MS", cursive;
	}
.font6
	{color:windowtext;
	font-size:24.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Comic Sans MS", cursive;
	}
        .auto-style1 {
            height: 33.75pt;
            width: 768pt;
            color: windowtext;
            font-size: 24.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style2 {
            height: 21.95pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style3 {
            color: windowtext;
            font-size: 14.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: 2.0pt double windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style4 {
            color: windowtext;
            font-size: 14.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style5 {
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style6 {
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style7 {
            color: windowtext;
            font-size: 14.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style8 {
            color: windowtext;
            font-size: 14.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style9 {
            height: 23.1pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style10 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style11 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style12 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style13 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 2.0pt double windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style14 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: 2.0pt double windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style15 {
            color: windowtext;
            font-size: 6.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style16 {
            color: windowtext;
            font-size: 7.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style17 {
            height: 27.75pt;
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style18 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style19 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style20 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style21 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style22 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style23 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 2.0pt double windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style24 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 2.0pt double windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style25 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style26 {
            height: 12.75pt;
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style27 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style28 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style29 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style30 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style31 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style32 {
            color: windowtext;
            font-size: 6.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style33 {
            color: windowtext;
            font-size: 7.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Tahoma, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style34 {
            height: 17.45pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style35 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style36 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style37 {
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style38 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
            background: black;
        }
        .auto-style39 {
            color: white;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
            background: black;
        }
        .auto-style40 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style41 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style42 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style43 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style44 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style45 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style46 {
            height: 31.5pt;
            width: 808pt;
            color: windowtext;
            font-size: 24.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Lucida Sans Unicode", sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style47 {
            height: 20.1pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style48 {
            color: windowtext;
            font-size: 14.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style49 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 2.0pt double windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style50 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 2.0pt double windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style51 {
            height: 20.1pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style52 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style53 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style54 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: 2.0pt double windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style55 {
            height: 25.9pt;
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style56 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style57 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Arial Narrow", sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style58 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Arial Narrow", sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style59 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Arial Narrow", sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style60 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Arial Narrow", sans-serif;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style61 {
            color: windowtext;
            font-size: 7.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Arial Narrow", sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style62 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style63 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style64 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: center;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style65 {
            height: 12.95pt;
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style66 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style67 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style68 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style69 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style70 {
            color: windowtext;
            font-size: 6.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style71 {
            color: windowtext;
            font-size: 6.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style72 {
            color: windowtext;
            font-size: 7.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style73 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style74 {
            height: 27.0pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style75 {
            width: 166pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: normal;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style76 {
            height: 15.0pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style77 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style78 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Comic Sans MS", cursive;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style79 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style80 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style81 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style82 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style83 {
            color: windowtext;
            font-size: 8.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style84 {
            height: 15.0pt;
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style85 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right: 1.0pt solid windowtext;
            border-top: 1.0pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style86 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style87 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 1.0pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style88 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right: 1.0pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style89 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style90 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style91 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right: 1.0pt solid windowtext;
            border-top: 1.0pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style92 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: 1.0pt solid windowtext;
            border-right: 1.0pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style93 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: 1.0pt solid windowtext;
            border-top: 1.0pt solid windowtext;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style94 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right: 1.0pt solid windowtext;
            border-top: .5pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style95 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style96 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style97 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: bottom;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style98 {
            color: windowtext;
            font-size: 10.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid windowtext;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid windowtext;
            border-bottom: .5pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <h1><%: Title %></h1><hr />
    <p>Controllate: <strong>categoria fascia e peso!!!</strong></p>
    <asp:Button ID="btnKata" CssClass="btn" OnClick="btnKata_Click" runat="server" Text="Kata e Fukugo" />
    <asp:Button ID="btnkumite" CssClass="btn" OnClick="btnkumite_Click" runat="server" Text="Kumite Enbu" />
    <asp:Panel ID="pnlKata" Visible="false" runat="server">
    <table class="tbl2" border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:768pt" width="1021">
        <colgroup>
            <col style="mso-width-source:userset;mso-width-alt:841;width:17pt" width="23" />
            <col style="mso-width-source:userset;mso-width-alt:8448;width:173pt" width="231" />
            <col style="mso-width-source:userset;mso-width-alt:1060;width:22pt" width="29" />
            <col style="mso-width-source:userset;mso-width-alt:1280;width:26pt" width="35" />
            <col style="mso-width-source:userset;mso-width-alt:1682;width:35pt" width="46" />
            <col style="mso-width-source:userset;mso-width-alt:1097;width:23pt" width="30" />
            <col style="mso-width-source:userset;mso-width-alt:1828;width:38pt" width="50" />
            <col span="5" style="mso-width-source:userset;mso-width-alt:1353;
 width:28pt" width="37" />
            <col style="mso-width-source:userset;mso-width-alt:1792;width:37pt" width="49" />
            <col style="mso-width-source:userset;mso-width-alt:1755;width:36pt" width="48" />
            <col span="4" style="mso-width-source:userset;mso-width-alt:1133;
 width:23pt" width="31" />
            <col span="3" style="mso-width-source:userset;mso-width-alt:2084;
 width:43pt" width="57" />
        </colgroup>
        <tr height="45">
            <td class="auto-style1" colspan="21" height="45" width="1021">SELEZIONI REGIONALI<span>&nbsp; </span>KATA ind. Sq.- FUKUGO<font class="font7"> Saronno</font><font class="font5"> 12 Aprile 2015</font><font class="font6"><span>&nbsp;</span></font></td>
        </tr>
        <tr height="29">
            <td class="auto-style2" colspan="3" height="29" style="mso-ignore: colspan;">SOCIETA&#39; : Shotokenshukai Caravaggio</td>
            <td class="auto-style3" colspan="7">KATA INDIVIDUALE</td>
            <td class="auto-style4" colspan="4" rowspan="2">FUKUGO</td>
            <td class="auto-style5" colspan="4">KATA<span>&nbsp;</span></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr height="30">
            <td class="auto-style9" colspan="2" height="30" style="mso-ignore: colspan">CITTA&#39;<span>&nbsp;&nbsp; </span>: CARAVAGGIO</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">CA</td>
            <td class="auto-style12">SP</td>
            <td class="auto-style13" colspan="2">JU</td>
            <td class="auto-style13" colspan="3">SE</td>
            <td class="auto-style14" colspan="4">SQUADRE</td>
            <td class="auto-style15" rowspan="2">KATA</td>
            <td class="auto-style15" rowspan="2">FUKUGO</td>
            <td class="auto-style16" rowspan="2">SQ</td>
        </tr>
        <tr height="20">
            <td class="auto-style17" colspan="2" height="37" rowspan="2">Nome<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Cognome</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">00/99</td>
            <td class="auto-style20">98/97</td>
            <td class="auto-style21" colspan="2">96/95/ 94</td>
            <td class="auto-style22" colspan="3">Dal 1993 al 1980</td>
            <td class="auto-style23" colspan="2">speranze</td>
            <td class="auto-style24">Ju/Se</td>
            <td class="auto-style24">Ju/Se</td>
            <td class="auto-style24" colspan="2"><span>&nbsp; </span>Gruppo 2<span>&nbsp;</span></td>
            <td class="auto-style25" colspan="2" style="mso-ignore: colspan;">Gruppo 1</td>
        </tr>
        <tr height="17">
            <td class="auto-style26" height="17">M/F</td>
            <td class="auto-style27">fas.C</td>
            <td class="auto-style27">fas.B+C</td>
            <td class="auto-style28">fas.C</td>
            <td class="auto-style28">fas.A+B</td>
            <td class="auto-style28">fas.A</td>
            <td class="auto-style28">fas.B</td>
            <td class="auto-style28">fas.C</td>
            <td class="auto-style29">65 -</td>
            <td class="auto-style29">65+</td>
            <td class="auto-style30">femm</td>
            <td class="auto-style31">maschile</td>
            <td class="auto-style29">M</td>
            <td class="auto-style29">F</td>
            <td class="auto-style29">M</td>
            <td class="auto-style29">F</td>
            <td align="right" class="auto-style32">10,00</td>
            <td align="right" class="auto-style32">10,00</td>
            <td align="right" class="auto-style33">30,00</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">1</td>
            <td class="auto-style35">ALLEVI ALMA</td>
            <td class="auto-style36">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">2</td>
            <td class="auto-style35">ROCCHETTI IRENE</td>
            <td class="auto-style36">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td align="right" class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">3</td>
            <td class="auto-style35">SONZOGNI CLAUDIA</td>
            <td class="auto-style36">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">4</td>
            <td class="auto-style35">ROCCHETTI<span>&nbsp; </span>FRANCESCO</td>
            <td class="auto-style36">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td></td>
            <td class="auto-style38">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style39" colspan="3">ITALIANI 2014</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">5</td>
            <td class="auto-style18">FORTINI CARLO</td>
            <td class="auto-style36">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">6</td>
            <td class="auto-style35">ROCCHETTI MANUEL</td>
            <td class="auto-style36">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">7</td>
            <td class="auto-style35">ROCCHETTI DANIELE</td>
            <td class="auto-style36">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">8</td>
            <td class="auto-style35">BONAITA GABRIELE</td>
            <td class="auto-style36">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">9</td>
            <td class="auto-style35">PIROTTA FRANCESCO</td>
            <td class="auto-style36">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">10</td>
            <td class="auto-style35">VALSECCHI LUDOVICA</td>
            <td class="auto-style36">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">11</td>
            <td class="auto-style35">UBIALI SILVIA</td>
            <td class="auto-style36">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">12</td>
            <td class="auto-style35">GOMES JACKLINE</td>
            <td class="auto-style36">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td align="right" class="auto-style35">10,00</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">13</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">14</td>
            <td class="auto-style18">ROCCHETTI-ALLEVI-SONZOGNI</td>
            <td class="auto-style40">F</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td align="right" class="auto-style35">30,00</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">16</td>
            <td class="auto-style41">ROCCHETTI-FORTINI-ROCCHETTI</td>
            <td class="auto-style40">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td align="right" class="auto-style35">30,00</td>
        </tr>
        <tr height="23">
            <td align="right" class="auto-style34" height="23">17</td>
            <td class="auto-style41">ROCCHETTI-BONAITA-PIROTTA</td>
            <td class="auto-style40">M</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">X</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td align="right" class="auto-style35">30,00</td>
        </tr>
        <tr height="20">
            <td height="20"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="auto-style42" colspan="2" style="mso-ignore: colspan;">Totale<span>&nbsp;</span></td>
            <td align="right" class="auto-style43">110,00</td>
            <td align="right" class="auto-style43">30,00</td>
            <td align="right" class="auto-style43">90,00</td>
        </tr>
        <tr height="20">
            <td height="20"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="auto-style44" colspan="2" style="mso-ignore: colspan;">Totale<span>&nbsp;</span></td>
            <td class="auto-style45" colspan="3" rowspan="2">230,00</td>
        </tr>
        <tr height="20">
            <td height="20"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="auto-style42" colspan="2" style="mso-ignore: colspan;">Generale</td>
        </tr>
    </table>

    </asp:Panel>
    <asp:Panel ID="pnlKumite" Visible="false" runat="server">
        <table class="tbl2" border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:808pt" width="1072">
            <colgroup>
                <col width="19" />
                <col width="221" />
                <col width="29" />
                <col span="4" width="23" />
                <col span="3" width="26" />
                <col width="31" />
                <col span="3" width="23" />
                <col width="25" />
                <col span="4" width="26" />
                <col span="4" width="25" />
                <col width="28" />
                <col width="29" />
                <col span="4" width="28" />
                <col span="3" width="45" />
            </colgroup>
            <tr height="9">
                <td class="auto-style46" colspan="32" height="42" width="1072"><span>&nbsp;</span><font class="font6"><span>&nbsp;</span>SELEZIONI REGIONALI KUMITE ind. Sq. - ENBU</font><font class="font5"><span>&nbsp;&nbsp;&nbsp; </span>Concorezzo 26 Aprile 2015</font></td>
            </tr>
            <tr height="26">
                <td class="auto-style47" colspan="3" height="26">SOCIETA&#39; : Shotokenshukai Caravaggio</td>
                <td class="auto-style48" colspan="24"><span>&nbsp;</span>KUMITE INDIVIDUALE<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
                <td class="auto-style49" colspan="2">Kumite<span>&nbsp;</span></td>
                <td class="auto-style50" colspan="3">&nbsp;</td>
            </tr>
            <tr height="26">
                <td class="auto-style51" colspan="3" height="26">CITTA&#39;<span>&nbsp;&nbsp; </span>: CARAVAGGIO</td>
                <td class="auto-style52" colspan="4">Cadetti Fasc.C<span>&nbsp;</span></td>
                <td class="auto-style52" colspan="4">Speranze Fasc B+C</td>
                <td class="auto-style52" colspan="4"><span>&nbsp;</span>Junior fasc.C<span>&nbsp;&nbsp;</span></td>
                <td class="auto-style52" colspan="4">Junior fasc A+B</td>
                <td class="auto-style53" colspan="4">Seniores Fasc.C</td>
                <td class="auto-style53" colspan="4">Seniores Fasc.A+B</td>
                <td class="auto-style54" colspan="2">SQUADRE</td>
            </tr>
            <tr height="17">
                <td class="auto-style55" colspan="2" height="34" rowspan="2">Nome<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Cognome</td>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style57" colspan="2" style="mso-ignore: colspan;">Maschile</td>
                <td class="auto-style58" colspan="2" style="mso-ignore: colspan">Femminile</td>
                <td class="auto-style57" colspan="2" style="mso-ignore: colspan;">Maschile</td>
                <td class="auto-style58" colspan="2" style="mso-ignore: colspan">Femminile</td>
                <td class="auto-style59" colspan="2">Maschile</td>
                <td class="auto-style60" colspan="2">Femminile</td>
                <td class="auto-style57" colspan="2" style="mso-ignore: colspan;">Maschile</td>
                <td class="auto-style58" colspan="2" style="mso-ignore: colspan">Femminile</td>
                <td class="auto-style57" colspan="2" style="mso-ignore: colspan;">Maschile</td>
                <td class="auto-style58" colspan="2" style="mso-ignore: colspan">Femminile</td>
                <td class="auto-style59" colspan="2">Maschile</td>
                <td class="auto-style59" colspan="2">Femminile</td>
                <td class="auto-style61">Mas</td>
                <td class="auto-style61">Fem</td>
                <td class="auto-style62">indiv.</td>
                <td class="auto-style63"><span>&nbsp;</span>SQ</td>
                <td class="auto-style64" rowspan="17">&nbsp;</td>
            </tr>
            <tr height="17">
                <td class="auto-style65" height="17">M/F</td>
                <td class="auto-style66">-65</td>
                <td class="auto-style66">65</td>
                <td class="auto-style66">-55</td>
                <td class="auto-style66">55</td>
                <td class="auto-style66">-65</td>
                <td class="auto-style66">65</td>
                <td class="auto-style66">-55</td>
                <td class="auto-style66">55</td>
                <td class="auto-style66">-70</td>
                <td class="auto-style66">70</td>
                <td class="auto-style66">-55</td>
                <td class="auto-style66">55</td>
                <td class="auto-style66">-70</td>
                <td class="auto-style66">70</td>
                <td class="auto-style66">-55</td>
                <td class="auto-style67">55</td>
                <td class="auto-style68">-75</td>
                <td class="auto-style68">75</td>
                <td class="auto-style68">-60</td>
                <td class="auto-style69">60</td>
                <td class="auto-style67">-75</td>
                <td class="auto-style67">75</td>
                <td class="auto-style67">-60</td>
                <td class="auto-style67">60</td>
                <td class="auto-style70">&nbsp;</td>
                <td class="auto-style70">&nbsp;</td>
                <td align="right" class="auto-style71">10,00</td>
                <td align="right" class="auto-style72">30,00</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">1</td>
                <td class="auto-style35">ALLEVI ALMA</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">2</td>
                <td class="auto-style35">ROCCHETTI IRENE</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">3</td>
                <td class="auto-style35">SONZOGNI CLAUDIA</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37"><span>&nbsp;</span></td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">4</td>
                <td class="auto-style35">ROCCHETTI<span>&nbsp; </span>FRANCESCO</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style38">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style39" colspan="2">ITALIANI 2014</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">5</td>
                <td class="auto-style18">FORTINI CARLO</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">6</td>
                <td class="auto-style35">ROCCHETTI MANUEL</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">7</td>
                <td class="auto-style35">ROCCHETTI DANIELE</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">8</td>
                <td class="auto-style35">BONAITA GABRIELE</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">9</td>
                <td class="auto-style35">PIROTTA FRANCESCO</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">10</td>
                <td class="auto-style35">VALSECCHI LUDOVICA</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">11</td>
                <td class="auto-style35">UBIALI SILVIA</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">12</td>
                <td class="auto-style35">GOMES JACKLINE</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td align="right" class="auto-style35">10,00</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="23">
                <td align="right" class="auto-style34" height="23">13</td>
                <td class="auto-style73">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="36">
                <td align="right" class="auto-style74" height="36">14</td>
                <td class="auto-style75" width="221">ROCCHETTI-ALLEVI-SONZOGNI-GOMES</td>
                <td class="auto-style37">F</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">X</td>
                <td class="auto-style35">&nbsp;</td>
                <td align="right" class="auto-style35">30,00</td>
            </tr>
            <tr height="36">
                <td align="right" class="auto-style74" height="36">16</td>
                <td class="auto-style75" width="221">ROCCHETTI-FORTINI-BONAITA-ROCCHETTI</td>
                <td class="auto-style37">M</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style37"><span>&nbsp;</span>X<span>&nbsp;</span></td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td align="right" class="auto-style35">30,00</td>
            </tr>
            <tr height="20">
                <td class="auto-style76" height="20">&nbsp;</td>
                <td class="auto-style77" colspan="11" rowspan="2">ENBU M/M</td>
                <td></td>
                <td class="auto-style78" colspan="16" rowspan="2">ENBU M/F</td>
                <td></td>
                <td class="auto-style79">&nbsp;</td>
                <td class="auto-style80">enbu</td>
            </tr>
            <tr height="20">
                <td class="auto-style76" height="20">&nbsp;</td>
                <td class="auto-style81">&nbsp;</td>
                <td class="auto-style81">&nbsp;</td>
                <td class="auto-style82">&nbsp;</td>
                <td align="right" class="auto-style83">20,00</td>
            </tr>
            <tr height="20">
                <td align="right" class="auto-style84" height="20">1</td>
                <td class="auto-style85">ROCCHETTI</td>
                <td class="auto-style86">1</td>
                <td class="auto-style87" colspan="9">FORTINI</td>
                <td class="auto-style86">1</td>
                <td class="auto-style87" colspan="8">&nbsp;</td>
                <td class="auto-style86">1</td>
                <td class="auto-style87" colspan="7">&nbsp;</td>
                <td class="auto-style82">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td align="right" class="auto-style43">20,00</td>
            </tr>
            <tr height="20">
                <td align="right" class="auto-style84" height="20">2</td>
                <td class="auto-style88">&nbsp;</td>
                <td class="auto-style86">2</td>
                <td class="auto-style89" colspan="9">&nbsp;</td>
                <td class="auto-style86">2</td>
                <td class="auto-style89" colspan="8">ROCCHETTI</td>
                <td class="auto-style86">2</td>
                <td class="auto-style89" colspan="7">ROCCHETTI</td>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td align="right" class="auto-style35">20,00</td>
            </tr>
            <tr height="20">
                <td align="right" class="auto-style84" height="20">3</td>
                <td class="auto-style91">&nbsp;</td>
                <td class="auto-style86">3</td>
                <td class="auto-style87" colspan="9">&nbsp;</td>
                <td class="auto-style86">3</td>
                <td class="auto-style87" colspan="8">SONZOGNI</td>
                <td class="auto-style86">3</td>
                <td class="auto-style87" colspan="7">BONAITA</td>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td align="right" class="auto-style35">20,00</td>
            </tr>
            <tr height="20">
                <td align="right" class="auto-style84" height="20">4</td>
                <td class="auto-style92">&nbsp;</td>
                <td class="auto-style86">4</td>
                <td class="auto-style89" colspan="9">&nbsp;</td>
                <td class="auto-style86">4</td>
                <td class="auto-style89" colspan="8">&nbsp;</td>
                <td class="auto-style86">4</td>
                <td class="auto-style89" colspan="7">&nbsp;</td>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="20">
                <td align="right" class="auto-style84" height="20">5</td>
                <td class="auto-style93">&nbsp;</td>
                <td class="auto-style86">5</td>
                <td class="auto-style87" colspan="9">&nbsp;</td>
                <td class="auto-style86">5</td>
                <td class="auto-style87" colspan="8">&nbsp;</td>
                <td class="auto-style86">5</td>
                <td class="auto-style87" colspan="7">&nbsp;</td>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="20">
                <td align="right" class="auto-style84" height="20">6</td>
                <td class="auto-style94">&nbsp;</td>
                <td class="auto-style95">6</td>
                <td class="auto-style89" colspan="9">&nbsp;</td>
                <td class="auto-style95">6</td>
                <td class="auto-style89" colspan="8">&nbsp;</td>
                <td class="auto-style95">6</td>
                <td class="auto-style89" colspan="7">&nbsp;</td>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr height="20">
                <td height="20"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="auto-style96" colspan="3">Totale<span>&nbsp;</span></td>
                <td align="right" class="auto-style35">110,00</td>
                <td align="right" class="auto-style35">60,00</td>
                <td align="right" class="auto-style35">60,00</td>
            </tr>
            <tr height="20">
                <td height="20"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="auto-style97" colspan="3">Totale gen.</td>
                <td class="auto-style98" colspan="3">230,00</td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>

