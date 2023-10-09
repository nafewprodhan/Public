import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

options = webdriver.ChromeOptions()
options.add_experimental_option("detach", True)
driver = webdriver.Chrome(options=options, service=Service("chromedriver"))

web_link = "https://www.rokomari.com/book/publisher/586/islamic-foundation"
driver.get(web_link)
driver.maximize_window()
time.sleep(1)

popup = driver.find_element(By.XPATH, '//div[@class="popup-modal entry-popup"]')

links = driver.find_elements(By.XPATH, '//div[@class="books-wrapper__item"]')

ap_links = set()

pagination = driver.find_elements(By.XPATH, '//div[@class="pagination"]/a')
last_page = int(pagination[-2].text)

current_page = 1

while current_page <= last_page:
    if popup:
        driver.refresh()
        # driver.find_element(By.XPATH, '//div[@class="popup-modal entry-popup"]/div/button[@aria-label="Close"]').click()
        time.sleep(2)
    links = driver.find_elements(By.XPATH, '//div[@class="books-wrapper__item"]')
    for link in links:
        join_link = link.find_element(By.XPATH, './/div/a').get_attribute('href')
        ap_links.add(join_link)
    
    print("scrape", len(ap_links))

    current_page = int(driver.find_element(By.XPATH, '//span[@class="current"]').text)

    # next_page = pagination[-1]
        
    try:
        driver.find_element(By.XPATH, '(//div[@class="pagination"]/a)[8]').click()
        # if driver.find_element(By.XPATH, '//span[@class="disabled"]').text == "Next":
        #     next_page = False
    except:
        print("not working")
        pass
    print("current", current_page)
    print("last", last_page)


print(ap_links)
