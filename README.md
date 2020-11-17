# Robot Framework

  ## Prerequisites to run robot test scripts for UI projects
    
    1. Python 3.5 or above
    2. Robot Framework
    3. Robot Framework 'SeleniumLibrary' for UI test.
    4. Latest Chome Driver.
   
  ## Installation
    
    1. To install Robot Framework, use 'pip install robotframework' command.
    2. To install SeleniumLibrary, use 'pip install robotframework-seleniumlibrary' command.
    3. Download latest Chrome Driver from 'https://chromedriver.chromium.org/' and add the directory into your OS PATH.
    
  ## Development IDE and Plugins
  
    1. I've used PyCharm as the development IDE, and used Intellibot plugins ('https://github.com/lte2000/intellibot').
    
  ## Running the tests
    
    To run the test, first go to the project location (i.e. 'practice_form_automation') using the command line, then run a test using 'robot'
    command. Some commands to run the existing tests are following.
    
  #### Run all the test files:
    
      python3 -m robot -d Results Tests
  
  #### Run a test file using the default values:
    
      python3 -m robot -d Results Tests/PracticeForm.robot
      
  #### Run a test file by specifying a variable (e.g. 'browser') in the command line:
  
      python3 -m robot -v BROWSER:chrome -d Results Tests/PracticeForm.robot




