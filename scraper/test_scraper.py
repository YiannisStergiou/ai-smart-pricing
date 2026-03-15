from selenium import webdriver
from selenium.webdriver.common.by import By
driver = webdriver.Chrome()
driver.get(
    "https://www.hondoscenter.com/el/n-5-m00200466488.html?beauty_size=50695")
price_element = driver.find_element(By.CLASS_NAME, "ProductPrice-PriceValue")
print(price_element.get_attribute("content"))
driver.quit()
