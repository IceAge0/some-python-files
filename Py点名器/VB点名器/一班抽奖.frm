VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4860
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8220
   LinkTopic       =   "Form1"
   ScaleHeight     =   4860
   ScaleWidth      =   8220
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   2040
      TabIndex        =   0
      Top             =   3480
      Width           =   3615
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   1215
      Left            =   1800
      TabIndex        =   1
      Top             =   600
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As Integer
a = Int((5) * Time + 1)
If (a = 1) Then
b = "²Ì¾©êÊ"
ElseIf (a = 2) Then
b = "³ÂîÆĞĞ"
ElseIf (a = 3) Then
b = "³ÂØ·Ìì"
ElseIf (a = 4) Then
b = "ºú¼Òç÷"
ElseIf (a = 5) Then
b = "ºúĞùºÆ"
ElseIf (a = 6) Then
b = "»ÆÒİÇÅ"
ElseIf (a = 7) Then
b = "½¯Ğñ·å"
ElseIf (a = 8) Then
b = "Àî³¿ÀÖ"
ElseIf (a = 9) Then
b = "Áõ¿¡½Ü"
ElseIf (a = 10) Then
b = "Â¬¼ÌÅô"
ElseIf (a = 11) Then
b = "Âí¿¥æë"
ElseIf (a = 12) Then
b = "Ã«ÓîÑô"
ElseIf (a = 13) Then
b = "Ê·ÓêÕÜ"
ElseIf (a = 14) Then
b = "ËïºÆÇÕ"
ElseIf (a = 15) Then
b = "ËïÒ¶çù"
ElseIf (a = 16) Then
b = "ÍõºÆÏè"
ElseIf (a = 17) Then
b = "ÏÄè÷ğ©"
ElseIf (a = 18) Then
b = "Ğì°²"
ElseIf (a = 19) Then
b = "Ğí³¿Áú"
ElseIf (a = 20) Then
b = "ĞíÙ¼Äş"
ElseIf (a = 21) Then
b = "Ñî³ÛÖÜ"
ElseIf (a = 22) Then
b = "Ñîê»"
ElseIf (a = 23) Then
b = "Ò¶¿¡³½"
ElseIf (a = 24) Then
b = "Ò¶ÎÄĞñ"
ElseIf (a = 25) Then
b = "ÕÅÍ¥çâ"
ElseIf (a = 26) Then
b = "ÕÅÍ¥è¤"
ElseIf (a = 27) Then
b = "Ö£Óî½Ü"
ElseIf (a = 28) Then
b = "³ÂÒÕé¿"
ElseIf (a = 29) Then
b = "³ÂŞÈĞ¾"
ElseIf (a = 30) Then
b = "»ÆæÃâù"
ElseIf (a = 31) Then
b = "½¯ÁÖÙ¤"
ElseIf (a = 32) Then
b = "Àî¼ÑÒ»"
ElseIf (a = 33) Then
b = "Â¦Ê«ÔÃ"
ElseIf (a = 34) Then
b = "Ä²ĞÀÔÃ"
ElseIf (a = 35) Then
b = "Ä²Ö¥âù"
ElseIf (a = 36) Then
b = "ÈÎÌñ¾²"
ElseIf (a = 37) Then
b = "ÌÕÈ»È»"
ElseIf (a = 38) Then
b = "ÍôŞÈÏ£"
ElseIf (a = 39) Then
b = "ÍõÇ§Óğ"
ElseIf (a = 40) Then
b = "ÍõÓïº¬"
ElseIf (a = 41) Then
b = "ÎâÃÎÈç"
ElseIf (a = 42) Then
b = "ŞÉ¿ªÒæ"
ElseIf (a = 43) Then
b = "ÑîÁø"
ElseIf (a = 44) Then
b = "Ò¶çäÏ£"
ElseIf (a = 45) Then
b = "ÓàÔÃÑï"
ElseIf (a = 46) Then
b = "ÕÅÒà³Û"
ElseIf (a = 47) Then
b = "Ö£ÊæĞÄ"
ElseIf (a = 48) Then
b = "Öì¼ÒÄı"
ElseIf (a = 49) Then
b = "²Ì¾©êÊ666"
ElseIf (a = 50) Then

b = "¡¾Òş²Ø´ó½±¡¿ÕÂÀÏÊ¦Ç××Ô»Ø´ğ"
End If

Label1 = b
End Sub

Private Sub Form_Load()

End Sub
