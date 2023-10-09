from selenium import webdriver
from selenium.webdriver.support.ui import Select   #for dropdown
from selenium.webdriver import chrome
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
import pandas as pd
import time

options = webdriver.ChromeOptions()
options.add_experimental_option("detach", True)

website = "https://www.adamchoi.co.uk/overs/detailed"
driver = webdriver.Chrome(options=options, service=Service(ChromeDriverManager().install()))

driver.get(website)
all_matches_btn = driver.find_element('xpath', '//*[@id="page-wrapper"]/div/home-away-selector/div/div/div/div/label[2]')
all_matches_btn.click()

dropdown = Select(driver.find_element('id', "country"))
dropdown.select_by_visible_text('Germany')
time.sleep(3)

trows = driver.find_elements('xpath', "//tr")

date = []
team1 = []
score = []
team2 = []

for trow in trows:
    date.append(trow.find_element("xpath", './td[1]').text)
    team1.append(trow.find_element("xpath", './td[2]').text)
    score.append(trow.find_element("xpath", './td[3]').text)
    team2.append(trow.find_element("xpath", './td[4]').text)

driver.quit()

df = pd.DataFrame({'date': date, 'team1': team1, 'score': score, 'team2': team2})
df.to_csv('fottball_matches_ger.csv', index=False)
print(df)