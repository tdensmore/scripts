#!/usr/bin/env python
import time
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException

driver = webdriver.PhantomJS(service_args=['--ssl-protocol=any'])
driver.set_window_size(1124, 850) # set browser size.
# driver = webdriver.Chrome();

driver.get("http://scottiestreesrock.com");
start_time = time.time()

try:
    with open('emails.txt') as thefile:
        for line in thefile:

            # ENTER EMAIL ADDRESS
            driver.find_element_by_id("email").send_keys( line.strip() )

            # AGREE
            agreecheckbox = driver.find_element_by_xpath("//input[@type='checkbox']")
            agreecheckbox.click()

            # VOTE AND ENTER
            driver.find_element_by_id("button").click()

            try:
                # VOTE FOR KELLY MILL VIDEO
                school = driver.find_element_by_xpath("//input[@value='school_9']")
                school.click()
                driver.find_element_by_id("button").click()

                # CLICK HOME TO VOTE AGAIN
                try:
                    elem = driver.find_elements_by_xpath("//*[contains(text(), 'you can vote daily')]")
                    continue_link = driver.find_element_by_link_text('Home')
                    continue_link.click()
                    print "Voted successfully: " + line.strip()
                except NoSuchElementException:
                    print "Error: Not on thank you page"
                    break
            except NoSuchElementException:
                # THE EMAIL ADDRESS HAS ALREADY VOTED
                print " " + line.strip() + " already voted"
                continue

    end_time = time.time()
except:
    end_time = time.time()

print( "Total time: " + str( end_time - start_time ) + " seconds")
driver.close
