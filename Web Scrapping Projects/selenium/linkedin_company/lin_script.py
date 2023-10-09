import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import pandas as pd
import cred

options = webdriver.ChromeOptions()
options.add_experimental_option("detach", True)
driver = webdriver.Chrome(options=options, service=Service("chromedriver"))

driver.get('http://www.linkedin.com/')
time.sleep(1)
driver.maximize_window()
signin = driver.find_element(By.XPATH, "/html/body/nav/div/a[2]") 
signin.click()

email_input = driver.find_element(By.XPATH, '//*[@id="username"]')
pass_input = driver.find_element(By.XPATH, '//*[@id="password"]')
lgn_btn = driver.find_element(By.XPATH, '//*[@id="organic-div"]/form/div[3]/button')
email_input.send_keys(cred.email)
pass_input.send_keys(cred.password)
lgn_btn.submit()
time.sleep(15)

# driver.find_element(By.XPATH, '//span[@id="button-label"]').click()
# driver.find_element(By.XPATH, '//input[@type="email"]').send_keys('vosm.vlogs@gmail.com')
# driver.find_element(By.XPATH, '//*[@id="identifierNext"]/div/button')
# driver.find_element(By.XPATH, '')
# driver.find_element(By.XPATH, '')
# driver.find_element(By.XPATH, '')


search_input = driver.find_element(By.XPATH, '//input[@placeholder="Search"]')
search_input.send_keys("data analysis")
search_input.send_keys(Keys.ENTER)
time.sleep(10)

companies_btn = driver.find_element(By.XPATH, '//*[@id="search-reusables__filters-bar"]/ul/li[5]/button')
companies_btn.click()
time.sleep(5)

# location_btn = driver.find_element(By.XPATH, '//*[@id="searchFilter_companyHqGeo"]')
# location_btn.click()
# time.sleep(10)
# add_location = driver.find_element(By.XPATH, '//input[@placeholder="Add a location"]')
# time.sleep(5)
# add_location.send_keys('bangladesh')
# time.sleep(10)
# location_filter_btn = driver.find_element(By.XPATH, '//html/body/div[5]/div[3]/div[2]/section/div/nav/div/ul/li[3]/div/div/div/div[1]/div/form/fieldset/div[2]/button[2]')


name = []
phone = []
industry = []
location = []
follower = []
website = []
size = []
founded = []
specialities = []
company_link = []

companies = driver.find_elements(By.XPATH, '//li[@class="reusable-search__result-container"]')

for company in companies:
    link = company.find_element(By.XPATH, './div/div/div/div/div/div/span/span/a').get_attribute("href")
    company_link.append(link)
    print(link)

for link in company_link:
    driver.get(link)
    time.sleep(2)
    try:
        driver.find_element(By.XPATH, '(//footer[@class="artdeco-card__actions"]/a)[1]').click()
        time.sleep(1)
        # h1 = driver.find_element(By.XPATH, '//h1/span').text
        # d1 = driver.find_element(By.XPATH, '//dd[1]').text
        # d2 = driver.find_element(By.XPATH, '//dd[2]').text
        # d3 = driver.find_element(By.XPATH, '//dd[3]').text
        # d4 = driver.find_element(By.XPATH, '//dd[4]').text
        # d5 = driver.find_element(By.XPATH, '//dd[5]').text
        # d6 = driver.find_element(By.XPATH, '//dd[6]').text
        # d7 = driver.find_element(By.XPATH, '//dd[7]').text

        if driver.find_element(By.XPATH, '//h1/span').text:
            name.append(driver.find_element(By.XPATH, '//h1/span').text)
        else:
            print("missing")
            name.append('.')
        if driver.find_element(By.XPATH, '//dd[1]').text:
            website.append(driver.find_element(By.XPATH, '//dd[1]').text)
        else:
            print("missing")
            website.append('.')
        if driver.find_element(By.XPATH, '//dd[2]').text:
            phone.append(driver.find_element(By.XPATH, '//dd[2]').text)
        else:
            print("missing")
            phone.append('.')
        if driver.find_element(By.XPATH, '//dd[3]').text:
            industry.append(driver.find_element(By.XPATH, '//dd[3]').text)
        else:
            print("missing")
            industry.append('.')
        if driver.find_element(By.XPATH, '//dd[4]').text:
            size.append(driver.find_element(By.XPATH, '//dd[4]').text)
        else:
            print("missing")
            size.append('.')
        if driver.find_element(By.XPATH, '//dd[5]').text:
            location.append(driver.find_element(By.XPATH, '//dd[5]').text)
        else:
            print("missing")
            location.append('.')
        if driver.find_element(By.XPATH, '//dd[6]').text:
            founded.append(driver.find_element(By.XPATH, '//dd[7]').text)
        else:
            print("missing")
            founded.append('.')
        if driver.find_element(By.XPATH, '//dd[7]').text:
            specialities.append(driver.find_element(By.XPATH, '//dd[7]').text)
        else:
            print("missing")
            specialities.append('.')
        
    except:
        print("except error")
        pass


dictionary = {'company': name, 'website': website, 'phone': phone, 'industry': industry, 'size': size, 'location': location, 'founded': founded, 'specialities': specialities}
# df = pd.DataFrame(dictionary)
# df.to_csv('company_info.csv', index=False)
print(dictionary)

print(len(name))
print(len(website))
print(len(phone))
print(len(industry))
print(len(size))
print(len(location))
print(len(founded))
print(len(specialities))

time.sleep(5)
driver.quit()
