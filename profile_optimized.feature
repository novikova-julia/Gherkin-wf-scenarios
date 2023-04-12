Feature: Profile Tab Component

  Scenario: User should be able to view their profile information
    Given the user is logged in
    And navigates to the Profile tab
    Then the user should see their profile information including name and email provided at registration

  Scenario: User should be able to view their profile in mobile resolution correctly
    Given the user opens the site in Mobile resolution
    When the user logs in
    And navigates to the Profile tab
    Then the user should see their profile information in mobile resolution correctly

  Scenario: User should be able to view their profile in tablet resolution correctly
    Given the user opens the site in Tablet resolution
    When the user logs in
    And navigates to the Profile tab
    Then the user should see their profile information in mobile resolution correctly

  Scenario: User should be able to change their profile language to German
    Given the user is logged in
    And the profile is in English
    When German language icon in the upper right corner is chosen
    Then the user should see their profile information in German

  Scenario: User should be able to change their profile language to French
    Given the user is logged in
    And the profile is in German
    When French language icon in the upper right corner is chosen
    Then the user should see their profile information in French

  Scenario: User should be able to change their profile language to Ukrainian
    Given the user is logged in
    And the profile is in French
    When Ukrainian language icon in the upper right corner is chosen
    Then the user should see their profile information in Ukrainian

  Scenario: User should be able to change their profile language to Russian
    Given the user is logged in
    And the profile is in Ukrainian
    When Russian language icon in the upper right corner is chosen
    Then the user should see their profile information in Russian

  Scenario: User should be able to change their profile language to English
    Given the user is logged in
    And the profile is in Russian
    When English language icon in the upper right corner is chosen
    Then the user should see their profile information in English

  Scenario Outline: User should be able to see Full name section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Full name section named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to change their full name in profile (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Full name section is clicked
    And new valid First name and valid Last name are entered
    And Save button is clicked
    Then the user should see Full name in profile with the first letter on the avatar updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to insert SQL/XSS injection into their full name in their profile (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Full name field is clicked
    And simple SQL/XSS injections in First name and Last name fields are inserted
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their full name in their profile to numbers or special symbols (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Full name field is clicked
    And new invalid First name and Last name are entered (containing of numbers or special symbols)
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to save full name in their profile blank (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Full name section is clicked
    And First name and Last name are left empty
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to fill First and Last name fields in their profile with spaces (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Full name section is clicked
    And First name and Last name are filled with several spaces
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave Full name changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Full name section is clicked
    And First name and Last name are filled with new information
    And Cross icon is clicked
    Then the user should see the fields have not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to see Email section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Email section named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to change their email (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Email section is clicked
    And new valid email is entered
    And Save button is clicked
    Then the user should see a confirmation email notification and a button to cancel the changes
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their email to numbers or special symbols (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Email section is clicked
    And new invalid email is entered
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to save email in their profile blank (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Email section is clicked
    And Email field is left empty
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to fill Email field in their profile with spaces (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Email section is clicked
    And Email field is filled with several spaces
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave email changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Email section is clicked
    And Email field is filled with new email
    And Cross icon is clicked
    Then the user should see the field has not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to see Phone section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Phone section named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to change their phone number (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Phone section is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And Save button is clicked
    Then the user should see an updated phone number
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their phone number to random one (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Phone section is clicked
    And new country flag with phone prefix is chosen
    And new invalid phone number consisting of random digits is entered
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to save phone in their profile blank (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Phone section is clicked
    And new country flag with phone prefix is chosen
    And the rest of the number is blank
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave phone changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Phone section is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And Cross icon is clicked
    Then the user should see the field has not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to see Most recent address section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Most recent address and its fields named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to change their Most recent address (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Most recent address section is clicked
    And new valid Street + building number are entered
    And new Address line 2 (optional) is entered
    And new ZIP code is entered
    And new City is entered
    And new State/Region is entered
    And new Country is chosen
    And Save button is clicked
    Then the user should see the full updated Most recent address
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to save Most recent address in their profile blank (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Most recent address section is clicked
    And Street + building number fields are blank
    And Address line 2 (optional) field is blank
    And ZIP code field is blank
    And City field is blank
    And State/Region field is blank
    And Country field is blank
    And Save button is clicked
    Then an error message near mandatory fields should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their Most recent address to numbers or special symbols (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Most recent address section is clicked
    And Street + building number fields are filled with numbers or special symbols
    And Address line 2 (optional) field is filled with numbers or special symbols
    And ZIP code field is filled with numbers or special symbols
    And City field is filled with numbers or special symbols
    And State/Region field is filled with numbers or special symbols
    And Country field is chosen
    And Save button is clicked
    Then error messages should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to insert SQL/XSS injection into their Most recent address in their profile (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Most recent address field is clicked
    And simple SQL/XSS injections in all fields fields are inserted
    And Save button is clicked
    Then an error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave address changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Most recent address section is clicked
    And new valid Street + building number are entered
    And new Address line 2 (optional) is entered
    And new ZIP code is entered
    And new City is entered
    And new State/Region is entered
    And new Country is chosen
    And Cross icon is clicked
    Then the user should see the field has not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to see Identity verification section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Identity verification section named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to verify their identity using QR code (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Identity verification section is clicked
    And Start verification button is clicked
    And QR Code from Option 1 is scanned
    And Let's go! button on mobile phone is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a Thank You! screen is displayed
    Then the user should see verified status in their Profile
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to verify their identity using link via SMS (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Identity verification section is clicked
    And Start verification button is clicked
    And a valid phone number is entered
    And Next button is clicked
    And SMS with link is received
    And a link is opened
    And Let's go! button is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a Thank You! screen is displayed
    Then the user should see verified status in their Profile
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to verify their identity using invalid ID (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Identity verification section is clicked
    And Start verification button is clicked
    And QR Code from Option 1 is scanned
    And Let's go! button on mobile phone is clicked
    And a photo of a cat is taken
    And passport is selected
    And Continue button is clicked
    And a photo of a cat is taken
    And Try again button is clicked
    And a photo of a cat is taken
    And a right variant of a photo is selected
    And a picture of the wall is taken
    And Try again button is clicked
    And a picture of the wall is taken
    And a right variant of a photo is selected
    And a Thank You! screen is displayed
    Then the user should see unverified status in their Profile
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave verification changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Identity verification section is clicked
    And Start verification button is clicked
    And Cross icon is clicked
    And Exit button is clicked
    And another Cross icon is clicked
    Then the user should see the Identity status has not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to see Birth date section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Birth date section named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to change their Birth date (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Birth date section is clicked
    And day is entered
    And month is entered
    And year is entered
    And Save button is clicked
    Then the user should see an updated Birth date
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their Birth date to invalid (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Birth date section is clicked
    And invalid day is entered
    And invalid month is entered
    And invalid year is entered
    And Save button is clicked
    Then error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their Birth date to blank (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Birth date section is clicked
    And day is blank
    And month is blank
    And year is blank
    And Save button is clicked
    Then error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave Birth date changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Birth date section is clicked
    And day is entered
    And month is entered
    And year is entered
    And Cross icon is clicked
    Then the user should see the Birth date has not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to see Nationality section named correctly (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    Then the user should see Nationality section named correctly
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to change their Nationality (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Nationality section is clicked
    And nationality is chosen
    And Save button is clicked
    Then the user should see an updated Nationality
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should not be able to change their Nationality to blank (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Nationality section is clicked
    And Please choose your nationality option is chosen
    And Save button is clicked
    Then error message should be displayed
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

  Scenario Outline: User should be able to leave Nationality changes unsaved (<language>)
    Given the user is logged in
    And a file with localisation strings is loaded for <language>
    And the profile is in <language>
    When the Edit icon near Nationality section is clicked
    And nationality is chosen
    And Cross icon is clicked
    Then the user should see the Nationality has not been updated
    Examples:
    |language|
    |English|
    |German|
    |French|
    |Ukrainian|
    |Russian|

