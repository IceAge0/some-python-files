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
   StartUpPosition =   3  '����ȱʡ
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
b = "�̾���"
ElseIf (a = 2) Then
b = "������"
ElseIf (a = 3) Then
b = "��ط��"
ElseIf (a = 4) Then
b = "������"
ElseIf (a = 5) Then
b = "������"
ElseIf (a = 6) Then
b = "������"
ElseIf (a = 7) Then
b = "�����"
ElseIf (a = 8) Then
b = "���"
ElseIf (a = 9) Then
b = "������"
ElseIf (a = 10) Then
b = "¬����"
ElseIf (a = 11) Then
b = "����"
ElseIf (a = 12) Then
b = "ë����"
ElseIf (a = 13) Then
b = "ʷ����"
ElseIf (a = 14) Then
b = "�����"
ElseIf (a = 15) Then
b = "��Ҷ��"
ElseIf (a = 16) Then
b = "������"
ElseIf (a = 17) Then
b = "�����"
ElseIf (a = 18) Then
b = "�찲"
ElseIf (a = 19) Then
b = "����"
ElseIf (a = 20) Then
b = "��ټ��"
ElseIf (a = 21) Then
b = "�����"
ElseIf (a = 22) Then
b = "���"
ElseIf (a = 23) Then
b = "Ҷ����"
ElseIf (a = 24) Then
b = "Ҷ����"
ElseIf (a = 25) Then
b = "��ͥ��"
ElseIf (a = 26) Then
b = "��ͥ�"
ElseIf (a = 27) Then
b = "֣���"
ElseIf (a = 28) Then
b = "�����"
ElseIf (a = 29) Then
b = "����о"
ElseIf (a = 30) Then
b = "������"
ElseIf (a = 31) Then
b = "����٤"
ElseIf (a = 32) Then
b = "���һ"
ElseIf (a = 33) Then
b = "¦ʫ��"
ElseIf (a = 34) Then
b = "Ĳ����"
ElseIf (a = 35) Then
b = "Ĳ֥��"
ElseIf (a = 36) Then
b = "����"
ElseIf (a = 37) Then
b = "��ȻȻ"
ElseIf (a = 38) Then
b = "����ϣ"
ElseIf (a = 39) Then
b = "��ǧ��"
ElseIf (a = 40) Then
b = "���ﺬ"
ElseIf (a = 41) Then
b = "������"
ElseIf (a = 42) Then
b = "�ɿ���"
ElseIf (a = 43) Then
b = "����"
ElseIf (a = 44) Then
b = "Ҷ��ϣ"
ElseIf (a = 45) Then
b = "������"
ElseIf (a = 46) Then
b = "�����"
ElseIf (a = 47) Then
b = "֣����"
ElseIf (a = 48) Then
b = "�����"
ElseIf (a = 49) Then
b = "�̾���666"
ElseIf (a = 50) Then

b = "�����ش󽱡�����ʦ���Իش�"
End If

Label1 = b
End Sub

Private Sub Form_Load()

End Sub
