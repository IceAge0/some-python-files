VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "摇一摇v2.2 by Teacher"
   ClientHeight    =   2610
   ClientLeft      =   4785
   ClientTop       =   3930
   ClientWidth     =   6870
   LinkTopic       =   "Form1"
   ScaleHeight     =   2610
   ScaleWidth      =   6870
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "宋体"
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
      Text            =   "请选择班级"
      Top             =   120
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "重置"
      Height          =   495
      Left            =   2880
      TabIndex        =   4
      Top             =   1800
      Width           =   1215
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "微软雅黑"
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
      Caption         =   "停止"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "开始"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "摇一摇！"
      BeginProperty Font 
         Name            =   "微软雅黑"
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
Const fenge = "--------------------"  '重置分界线
Dim n As Integer   '摇奖总人数
Dim stu(1 To 1000) As String      '用于存储姓名
Dim total(1 To 1000) As Long
Dim filename(100) As String       '用于存储文件名
Dim x As Integer, t1 As Integer   'x用于当前被摇出来的数组编号，t1表示当前摇的次数
Private Sub Combo1_Click()
    Dim k As Integer, fname As String, temp As String
    List1.Clear
    fname = Combo1.Text
    Label1.Caption = fname & "班"
    Label1.ForeColor = vbBlack
    
    fname = "txt\" & fname & ".txt"
    Open fname For Input As #1 '打开student.txt文件，作为输入用，文件编号为1号
    k = 1
    Do While Not EOF(1)       ' eof(1)——判断1号文件是否已到文件结尾,not eof(1)表示文件没有到结尾
      Line Input #1, stu(k)    ' 输入1号文件的一行到数组元素stu(k)中
      k = k + 1
    Loop
    Close #1          '关闭打开的1号文件
    
    n = k - 1
    For i = 1 To n
        total(i) = 0
    Next i
    temp = " #" & Combo1.Text & "班#"
    Call output(temp)       'bak.txt文件中输出班级号
End Sub

Private Sub Command1_Click()
    Dim k As Integer, class As String
    If Combo1.Text <> "请选择班级" Then
        Label1.ForeColor = vbBlack
        Timer1.Enabled = True
        Command1.Enabled = False
        Command2.Enabled = True
    Else
      MsgBox "请选择班级", , "提示"
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
    Label1.Caption = "摇一摇！"
    Label1.ForeColor = vbBlack
    Call output(fenge)
End Sub
Private Sub Timer1_Timer()
    Randomize       '初始化
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
    t1 = 0      '列表框中对应的摇奖序号
    '输出文件清空，重置
    Open App.Path & "\result\bak.txt" For Output As #2
    Close #2
End Sub
Sub getfilename()
    Dim fso As Object, folder As Object, file As Object
    Dim i As Integer, tempf(100) As String, c As Integer
    Dim j As Integer, flag1 As Integer, flag2 As Integer
    '创建FSO对象
    Set fso = CreateObject("scripting.filesystemobject")
    Set folder = fso.getfolder(App.Path & "\txt\")
    c = 1
    For Each file In folder.Files   '遍历txt文件夹下的文件
        tempf(c) = file
        c = c + 1
    Next
    Set fso = Nothing
    Set folder = Nothing
    '去除文件名中的路径，保留主文件名
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
'将摇奖结果输出到文本文件
Sub output(y As String)
    Open App.Path & "\result\bak.txt" For Append As #2
    Print #2, y
    Close #2
End Sub
