Startup Page for TaskHaven

## (Read in code) CHANGELOG -zNoira
Repository v1:
    - Added flutter_application_1 webapp file project for easy access.

    v2:
    - Complete overhaul of the main project file.
    - Along with a whole new dart file, adjusted widget_test and pubsec according to the changes.
    - New dart file also changed certain design aspects that broke the previous page design.
    - Swapped temporary logo with the new, final logo.
    - Major font changes sourced from google fonts.
    - Aligned elements to center of widget (right).

    v3:
    - Inserted gradient design in the startup page. Looks bland without it.
    - Moved startup page code from main.dart to a separate .dart file under lib/pages.
    - Removed major redundant/souble vision lines.
    - Adjusted major pubspec and test lines according to the new .dart placement.
    - Created signin.dart in lib/pages.
    - Created signup.dart in lib/pages.
    - Removed asset 'templogo.jpg'.
    - Added temporary asset 'tempbg.png' and 'tempbg2'. This serves as a placeholder background for the signup and signin page.
    - Added a hover animation for the sign up and sign in buttons in the startup page.

    v4.1:
    - Signin overhaul
    - Added 'forgot password' and 'no account' clickable texts.
    - Forgot password widget can also verify if the email exists or is invalid. (test email at the bottom of signin.dart)