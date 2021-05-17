# 411-PasswordManager

Created by,
- Ryan Romero         CWID 889823894
- Shervin Afrasiabi   CWID 887958510

# Author's Note:
If you are not reading this readme file from github, please go to the github link under section 3 to continue reading the file. Or copy/paste this link here: https://github.com/rromero26/411-PasswordManager .
A lot of github specific markdown were used when creating this file. For a much more visually appealing read of this file, head to the github now.

# Project Description
Technology has become interlocked with everyday life for people in today's age. Due to this fact, many users are required to create and keep track of passwords to interact with their favorite websites and apps. Many users have resorted to creating easy to memorize passwords for their accounts, leaving them vulnerable to dictionary attacks. 
- We wanted to created a simple swift mobile app where users can quickly generate a strong password. Any passwords generated will be saved into a table where users can tap each entry and the password will be copied onto their iPhone's clipboard to easily paste onto any website or app. 
- Users can also save their own passwords onto the table by entering into the available textbox and using the submit button, allowing the password to be easily copied to their iPhone's clipboard with one simple tap.
# Limitations
- The program is currently unable to save passwords between sessions.
- Currently, the GUI only seems to display properly on larger phones such as the iPhone 12 pro max (GUI does not line up well for small phones such as iPhone 8 or center well with iPad).

## Section 1: Functionalities
- **generate(12)**: Generate a password string of 12 characters. Clicking on it will generate the password and instantly save it onto the table.
- **generate(16)**: Generate a password string of 16 characters. Clicking on it will generate the password and instantly save it onto the table.
- **Submit**: Upon clicking the submit button, the program takes the string in the textbox beside it and saves it onto the table (even if the textbox is empty).
- **Remove**: Used to delete rows in the table. Upon clicking it, table enters editing mode where user can click on the red circle, then click delete, to remove *that* specific row. Use this to remove password you don't like or don't believe are strong. Click on the remove button again to exit editing mode.

## Section 2: Architecture & Design
- This app was created using storyboard and methods in the view controller to program actions/logic.
- Use drill-down interface to create the table which is used to display the passwords.
- No 3rd-party libraries or outside components were used for this application. We kept it simple. 3rd-part libraries and components can be used to improve the application in the future however.

## Section 3: Github Location
https://github.com/rromero26/411-PasswordManager

## section 4: Test Results
Test Case | Test Description | Steps/Test Data | Result
--------- | ---------------- | --------------- | ---------
1 | **Generate(12)** button working as intended | 1. Open app<br />2. Click on generate(12) button<br />3. Examine table for result | Pass
2 | **Generate(16)** button working as intended | 1. Open app<br />2. Click on generate(16) button<br />3. Examine table for result | Pass
3 | Check if **password_random(...)** method is called properly when any of the 2 generate buttons are clicked  | 1. Pass both test cases 1 & 2 | Pass
5 | **submit** button working as intended | 1. Open app<br />2. Input sample text "Password" in the textfield<br />3. Click on submit<br /> 4.Examine table to see if "Password" appears  | Pass
6 | Entering and exiting Edit Mode using the **Remove** button | 1. Open app<br />2. Click on Remove button. Table should enter Editing Mode<br />3. Click on Remove button again to exit Editing Mode | Pass
7 | List of Passwords persist after app closes | 1. Open app<br />2. Generate a password<br />3. Exit app and re-open app<br />4. Examine the table for results | Fail
8 | Test to see if the table is able to handle MANY passwords | 1. Open app<br />2. Generate 50+ passwords onto the table (Take note of first generated password).<br />3. Scroll through the table and search for the first generated password | Pass
9 | Check if clicking on a password saves it to iPone's clipboard | 1. Open app<br />2. Generate a password and click on it in the table<br />3. Click on textbox and paste clipboard<br />4. Textbox should be populated with the generated password from step 2  | Pass
10 | Test app on muiltple iPhone emulators | 1. Run app on 3+ different iPone emulators (12 pro max, 8, iPad)<br />2. Examine results of the GUI in each emulator for intended results | Fail


## Section 5: Future Work
- Due to time contraints, we were unable to locally save passwords. Doing so would allow the list of passwords to persist between sessions. 
- Currently the random password generator picks from a bank of acceptable characters to generate the passwords. It does not do any other checks to see if the password is strong or weak. Can improve the algorithm to also check if password contains characteristics of strong passwords such as: 1 uppercase, 1 lowercase, 1 symbol, etc. The code can then be program to continue to reroll passwords until a strong password is created
- currently the application is using swift's default random method. In most cases the default random methods of coding languages arent truely random. To improve on security, we can create our own randomNumber method that closer in-line with true random number generators
- Since the application main focus is to help user manage a list of strong passwords for them to use, it important to protect where these passwords are being save. Having the files encrypted and securely stored within the phone is important incase an attacker manages to compromise the phone
- As the list of passwords grows, it might be difficult for user to remember what password is for what website/application. Can add some sort of system where user can add some text with every password. *This* text/comment can be use to write down what website *this* password is for or a hint to the application that *this* password was used for
- improve constraints to fit on all phones
