VERSION 5.00
Begin VB.Form frmPrograma 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Generar contraceña"
   ClientHeight    =   2055
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4935
   Icon            =   "frmPrograma.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   4935
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdgenerar 
      Caption         =   "&Generar"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox txtcontra 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   420
      Left            =   0
      TabIndex        =   2
      Top             =   1560
      Width           =   4935
   End
   Begin VB.TextBox txtdatos 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   1320
      TabIndex        =   0
      Top             =   240
      Width           =   3495
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   3000
      Picture         =   "frmPrograma.frx":0CCA
      Top             =   720
      Width           =   720
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "contraceña:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   240
      TabIndex        =   3
      Top             =   1080
      Width           =   1920
   End
   Begin VB.Label lbldatos 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "datos:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   1005
   End
End
Attribute VB_Name = "frmPrograma"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdgenerar_Click()
 Dim datos As String
 Dim valor As String

datos = txtdatos.Text
txtcontra.Text = ""

For i = 1 To Len(datos)
 valor = Mid(datos, i, 1)
 txtcontra.Text = txtcontra.Text _
 + valor & i
Next i

End Sub
