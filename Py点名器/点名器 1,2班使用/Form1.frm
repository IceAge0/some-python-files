VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "ҡһҡv2.2 by Teacher"
   ClientHeight    =   2610
   ClientLeft      =   4785
   ClientTop       =   3930
   ClientWidth     =   6870
   LinkTopic       =   "Form1"
   ScaleHeight     =   2610
   ScaleWidth      =   6870
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   4320
      TabIndex        =   5
      Text            =   "��ѡ��༶"
      Top             =   120
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "����"
      Height          =   495
      Left            =   2880
      TabIndex        =   4
      Top             =   1800
      Width           =   1215
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1950
      Left            =   4320
      TabIndex        =   3
      Top             =   480
      Width           =   2415
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   70
      Left            =   3600
      Top             =   840
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ֹͣ"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ʼ"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "ҡһҡ��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   36
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   930
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   3360
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const fenge = "--------------------"  '���÷ֽ���
Dim n As Integer   'ҡ��������
Dim stu(1 To 1000) As String      '���ڴ洢����
Dim total(1 To 1000) As Long
Dim filename(100) As String       '���ڴ洢�ļ���
Dim x As Integer, t1 As Integer   'x���ڵ�ǰ��ҡ�����������ţ�t1��ʾ��ǰҡ�Ĵ���
Private Sub Combo1_Click()
    Dim k As Integer, fname As String, temp As String
    List1.Clear
    fname = Combo1.Text
    Label1.Caption = fname & "��"
    Label1.ForeColor = vbBlack
    
    fname = "txt\" & fname & ".txt"
    Open fname For Input As #1 '��student.txt�ļ�����Ϊ�����ã��ļ����Ϊ1��
    k = 1
    Do While Not EOF(1)       ' eof(1)�����ж�1���ļ��Ƿ��ѵ��ļ���β,not eof(1)��ʾ�ļ�û�е���β
      Line Input #1, stu(k)    ' ����1���ļ���һ�е�����Ԫ��stu(k)��
      k = k + 1
    Loop
    Close #1          '�رմ򿪵�1���ļ�
    
    n = k - 1
    For i = 1 To n
        total(i) = 0
    Next i
    temp = " #" & Combo1.Text & "��#"
    Call output(temp)       'bak.txt�ļ�������༶��
End Sub

Private Sub Command1_Click()
    Dim k As Integer, class As String
    If Combo1.Text <> "��ѡ��༶" Then
        Label1.ForeColor = vbBlack
        Timer1.Enabled = True
        Command1.Enabled = False
        Command2.Enabled = True
    Else
      MsgBox "��ѡ��༶", , "��ʾ"
    End If
End Sub

Private Sub Command2_Click()
    Dim temp As String
    Timer1.Enabled = False
    Command1.Enabled = True
    Command2.Enabled = False
    Label1.ForeColor = vbRed
    total(x) = total(x) + 1
    t1 = t1 + 1
    temp = t1 & "  " & Label1.Caption & "(" & total(x) & ")"
    List1.AddItem temp
    List1.ListIndex = (List1.ListCount - 1)
    Call output(temp)
End Sub
Private Sub Command3_Click()
    List1.Clear
    For i = 1 To n
      total(i) = 0
    Next i
    t1 = 0
    Label1.Caption = "ҡһҡ��"
    Label1.ForeColor = vbBlack
    Call output(fenge)
End Sub
Private Sub Timer1_Timer()
    Randomize       '��ʼ��
    x = Int(Rnd() * n) + 1
    Label1.Caption = stu(x)
End Sub
Private Sub Form_Load()
    Dim i As Integer
    Call getfilename
    For i = 1 To 100
        If filename(i) = "" Then Exit For
        Combo1.AddItem filename(i)
    Next i
    t1 = 0      '�б���ж�Ӧ��ҡ�����
    '����ļ���գ�����
    Open App.Path & "\result\bak.txt" For Output As #2
    Close #2
End Sub
Sub getfilename()
    Dim fso As Object, folder As Object, file As Object
    Dim i As Integer, tempf(100) As String, c As Integer
    Dim j As Integer, flag1 As Integer, flag2 As Integer
    '����FSO����
    Set fso = CreateObject("scripting.filesystemobject")
    Set folder = fso.getfolder(App.Path & "\txt\")
    c = 1
    For Each file In folder.Files   '����txt�ļ����µ��ļ�
        tempf(c) = file
        c = c + 1
    Next
    Set fso = Nothing
    Set folder = Nothing
    'ȥ���ļ����е�·�����������ļ���
    c = c - 1
    For i = 1 To c
        flag1 = 0: flag2 = 0
        j = Len(tempf(i))
        Do While j >= 1 And (flag1 * flag2 = 0)
            t = Mid(tempf(i), j, 1)
            If t = "." Then flag2 = j
            If t = "\" Then flag1 = j
            j = j - 1
        Loop
        filename(i) = Mid(tempf(i), flag1 + 1, flag2 - flag1 - 1)
    Next i
End Sub
'��ҡ�����������ı��ļ�
Sub output(y As String)
    Open App.Path & "\result\bak.txt" For Append As #2
    Print #2, y
    Close #2
End Sub
