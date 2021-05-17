# 411-PasswordManager

Created by,
- Ryan Romero         CWID 889823894
- Shervin Afrasiabi   CWID 887958510

## Project Description
Technology has become interlocked with everyday life for people in today's age. Due to this fact, many users are required to create and keep track of passwords to interact with their favorite websites and apps. Many users have resorted to creating easy to memorize passwords for their accounts, leaving them vulnerable to dictionary attacks. 
- We wanted to created a simple swift mobile app where users can quickly generate a strong password. Any passwords generated will be saved into a table where users can tap  each entry and the password will be copied onto their iPhone's clipboard to easily paste onto any website or app. 
- Users can also save their their own passwords onto the table by entering into the available textbox and using the submit button, allowing the password to be easily copied to their iPhone's clipboard with one simple tap
## Limitations
- The program is currently unable to save passwords between sessions
- Currently, the GUI only seems to display properly on larger phones such as the iPhone 12 max

## Section 1: Functionalities
- generate(12): generate a password string of 12 characters and saves it onto the table

## Section 2: Architecture & Design

### Section 3: Github Location

#### section 4: Test Results

###### Section 5: Future Work
- Due to time contraints, we were unable to locally save passwords. Doing so would allow the list of passwords to persist between sessions. 
- Currently the random password generator picks from a bank of acceptable characters to generate the passwords. It does not do any other checks to see if the password is strong or weak. Can improve the algorithm to also check if password contains characteristics of strong passwords such as: 1 uppercase, 1 lowercase, 1 symbol, etc. The code can then be program to continue to reroll passwords until a strong password is created
- currently the application is using swift's default random method. In most cases the default random methods of coding languages arent truely random. To improve on security, we can create our own randomNumber method that closer in-line with true random number generators
- Since the application main focus is to help user manage a list of strong passwords for them to use, it important to protect where these passwords are being save. Having the files encrypted and securely stored within the phone is important incase an attacker manages to compromise the phone
- As the list of passwords grows, it might be difficult for user to remember what password is for what website/application. Can add some sort of system where user can add some text with every password. *This* text/comment can be use to write down what website *this* password is for or a hint to the application that *this* password was used for
