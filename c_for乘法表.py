# 点击行号后面的空隙会有一个红点，标记行之后点击debug在console处选择峰状按钮查看每一步运行过程
for a in range(1,10):
    for b in range(1,a + 1):
        c=a*b
        print(f'{b}*{a}={b*a}'  , end = "  ")      # f及后面单括号内的表达式能够解决之前很多关于换行的问题，end=的表示是说明前面f表达式结束后用引号内的来结尾
    print(  )      # 此处print后面的空格表示默认换行（因为print是默认一行一个的），注意此处的缩进与for(b)语句相同，意为在for(b)结束后换行，使其变为易读的格式
    # 除end外也可尝试sep等