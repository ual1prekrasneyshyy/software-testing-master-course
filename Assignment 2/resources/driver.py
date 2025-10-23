from selenium.webdriver.chromium import webdriver


def get_driver():
    options = webdriver.ChromiumOptions()
    driver = webdriver.ChromiumDriver(options=options)
    return driver
