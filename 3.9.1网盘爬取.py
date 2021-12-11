import os
from selenium.webdriver.support.select import Select
from selenium import webdriver
import time
from selenium.webdriver.common.action_chains import ActionChains

driver = webdriver.Chrome()
#不管是什么浏览器都要有对应的diver,学校机房用的是chrome 88
driver.get('http://10.209.85.201/index.aspx')
 
s1 = Select(driver.find_element_by_id('DropDownList1'))  # 实例化Select
for i in range(1,28):
    for j in range (1,47):
        s1.select_by_index(i)  # 选择第二项选项：o1
        #s1.select_by_value("o2")  # 选择value="o2"的项
        #s1.select_by_visible_text("o3")  # 选择text="o3"的值，即在下拉时我们可以看到的文本

        s2 = Select(driver.find_element_by_id('DropDownList2'))
        s2.select_by_index(j) 

        #输入密码
        password = driver.find_element_by_name('TextBox1')
        password.send_keys('123')

        #点击“登录”按钮
        login_button = driver.find_element_by_name('ImageButton1')
        login_button.submit()

        exit_button = driver.find_element_by_id('Left1_DataList1_ctl18_LinkButton1')
        #exit_button.submit()
        time.sleep(3000)

        ActionChains(driver).double_click(exit_button).perform()
        


        a=driver.current_url
        if a!="10.209.85.201/index.aspx":
            
            print(i,j)
            #driver.quit()
            time.sleep(3000)
            #driver.get('http://10.209.85.201/index.aspx')
        
#driver.quit()
os.system("pause")
