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

  Scenario: User should be able to see "Full name" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Full name" named correctly

  Scenario: User should be able to change their full name in profile (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near "Full name" field is clicked
    And new valid First name and Last name are entered
    And "Save" button is clicked
    Then the user should see Full name in profile with the first letter on the avatar updated

  Scenario: User should not be able to insert SQL/XSS injection into their full name in their profile (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near "Full name" field is clicked
    And simple SQL/XSS injections in First name and Last name fields are inserted
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to change their full name in their profile to numbers or special symbols (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near "Full name" field is clicked
    And new invalid First name and Last name are entered (containing of numbers or special symbols)
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save full name in their profile blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near "Full name" field is clicked
    And First name and Last name are left empty
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill First and Last name fields in their profile with spaces (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near "Full name" field is clicked
    And First name and Last name are filled with several spaces
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave Full name changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near "Full name" field is clicked
    And First name and Last name are filled with new information
    And "Cross" icon is clicked
    Then the user should see the fields have not been updated

  Scenario: User should be able to see "Email" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Email" named correctly

  Scenario: User should be able to change their email (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Email field is clicked
    And new valid email is entered
    And "Save" button is clicked
    Then the user should see a confirmation email notification and a button to cancel the changes

    Scenario: User should not be able to change their email to numbers or special symbols (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Email field is clicked
    And new invalid email is entered
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save email in their profile blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Email field is clicked
    And Email field is left empty
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill Email field in their profile with spaces (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Email field is clicked
    And Email field is filled with several spaces
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave email changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Email field is clicked
    And Email field is filled with new email
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Phone" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Phone" named correctly

    Scenario: User should be able to change their phone number (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Phone field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Save" button is clicked
    Then the user should see an updated phone number

    Scenario: User should not be able to change their phone number to random one (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Phone field is clicked
    And new country flag with phone prefix is chosen
    And new invalid phone number consisting of random digits is entered
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save phone in their profile blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Phone field is clicked
    And new country flag with phone prefix is chosen
    And the rest of the number is blank
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave phone changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Phone field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Most recent address" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Most recent address" and its fields named correctly

  Scenario: User should be able to change their Most recent address (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Most recent address field is clicked
    And new valid Street + street number are entered
    And new Address line 2 (optional) is entered
    And new ZIP code is entered
    And new City is entered
    And new State/Region is entered
    And new Country is chosen
    And "Save" button is clicked
    Then the user should see the full updated Most recent address

  Scenario: User should not be able to save Most recent address in their profile blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Most recent address field is clicked
    And Street + street number fields are blank
    And Address line 2 (optional) field is blank
    And ZIP code field is blank
    And City field is blank
    And State/Region field is blank
    And Country field is blank
    And "Save" button is clicked
    Then an error message near mandatory fields should be displayed

  Scenario: User should not be able to change their Most recent address to numbers or special symbols (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Most recent address field is clicked
    And Street + street number fields are filled with numbers or special symbols
    And Address line 2 (optional) field is filled with numbers or special symbols
    And ZIP code field is filled with numbers or special symbols
    And City field is filled with numbers or special symbols
    And State/Region field is filled with numbers or special symbols
    And Country field is chosen
    And "Save" button is clicked
    Then error messages should be displayed

  Scenario: User should not be able to insert SQL/XSS injection into their Most recent address in their profile (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Most recent address field is clicked
    And simple SQL/XSS injections in all fields fields are inserted
    And "Save" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave address changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Most recent address field is clicked
    And new valid Street + street number are entered
    And new Address line 2 (optional) is entered
    And new ZIP code is entered
    And new City is entered
    And new State/Region is entered
    And new Country is chosen
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Identity verification" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Identity verification" named correctly

  Scenario: User should be able to verify their identity using QR code (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Identity verification field is clicked
    And "Start verification" button is clicked
    And QR Code from Option 1 is scanned
    And "Let's go!" button on mobile phone is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Thank You!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should be able to verify their identity using link via SMS (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Identity verification field is clicked
    And "Start verification" button is clicked
    And a valid phone number is entered
    And "Next" button is clicked
    And SMS with link is received
    And a link is opened
    And "Let's go!" button is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Thank You!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should not be able to verify their identity using invalid ID (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Identity verification field is clicked
    And "Start verification" button is clicked
    And QR Code from Option 1 is scanned
    And "Let's go!" button on mobile phone is clicked
    And a photo of a cat is taken
    And passport is selected
    And "Continue" button is clicked
    And a photo of a cat is taken
    And "Try again" button is clicked
    And a photo of a cat is taken
    And a right variant of a photo is selected
    And a picture of the wall is taken
    And "Try again" button is clicked
    And a picture of the wall is taken
    And a right variant of a photo is selected
    And a "Thank You!" screen is displayed
    Then the user should see unverified status in their Profile

  Scenario: User should be able to leave verification changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Identity verification field is clicked
    And "Start verification" button is clicked
    And "Cross" icon is clicked
    And "Exit" button is clicked
    And another "Cross" icon is clicked
    Then the user should see the Identity status has not been updated

  Scenario: User should be able to see "Birth date" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Birth date" named correctly

  Scenario: User should be able to change their Birth date (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Birth date field is clicked
    And day is entered
    And month is entered
    And year is entered
    And "Save" button is clicked
    Then the user should see an updated Birth date

  Scenario: User should not be able to change their Birth date to invalid (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Birth date field is clicked
    And invalid day is entered
    And invalid month is entered
    And invalid year is entered
    And "Save" button is clicked
    Then error message should be displayed

  Scenario: User should not be able to change their Birth date to blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Birth date field is clicked
    And day is blank
    And month is blank
    And year is blank
    And "Save" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Birth date changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Birth date field is clicked
    And day is entered
    And month is entered
    And year is entered
    And "Cross" icon is clicked
    Then the user should see the Birth date has not been updated

  Scenario: User should be able to see "Nationality" section named correctly (English)
    Given the user is logged in
    And the profile is in English
    Then the user should see "Nationality" named correctly

  Scenario: User should be able to change their Nationality (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Nationality field is clicked
    And nationality is chosen
    And "Save" button is clicked
    Then the user should see an updated Nationality

  Scenario: User should not be able to change their Nationality to blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Nationality field is clicked
    And "Please choose your nationality" option is chosen
    And "Save" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Nationality changes unsaved (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Nationality field is clicked
    And nationality is chosen
    And "Cross" icon is clicked
    Then the user should see the Nationality has not been updated

  Scenario: User should be able to see "Vor- und Nachname" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Vor- und Nachname" named correctly

  Scenario: User should be able to change their full name in profile (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near "Vor- und Nachname" field is clicked
    And new valid First name and Last name are entered
    And "Speichern" button is clicked
    Then the user should see Full name in profile with the first letter on the avatar updated

  Scenario: User should not be able to insert SQL/XSS injection into their full name in their profile (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near "Vor- und Nachname" field is clicked
    And simple SQL/XSS injections in First name and Last name fields are inserted
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to change their full name in their profile to numbers or special symbols (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near "Vor- und Nachname" field is clicked
    And new invalid First name and Last name are entered (containing of numbers or special symbols)
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save full name in their profile blank (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near "Vor- und Nachname" field is clicked
    And First name and Last name are left empty
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill First and Last name fields in their profile with spaces (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near "Vor- und Nachname" field is clicked
    And First name and Last name are filled with several spaces
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave First and Last name changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near "Vor- und Nachname" field is clicked
    And First name and Last name are filled with new information
    And "Cross" icon is clicked
    Then the user should see the fields have not been updated

  Scenario: User should be able to see "Email" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Email" named correctly

  Scenario: User should be able to change their email (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Email field is clicked
    And new valid email is entered
    And "Speichern" button is clicked
    Then the user should see a confirmation email notification and a button to cancel the changes

    Scenario: User should not be able to change their email to numbers or special symbols (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Email field is clicked
    And new invalid email is entered
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save email in their profile blank (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Email field is clicked
    And Email field is left empty
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill Email field in their profile with spaces (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Email field is clicked
    And Email field is filled with several spaces
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave email changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Email field is clicked
    And Email field is filled with new email
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Telefon" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Telefon" named correctly

    Scenario: User should be able to change their phone number (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Telefon field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Speichern" button is clicked
    Then the user should see an updated phone number

    Scenario: User should not be able to change their phone number to random one (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Telefon field is clicked
    And new country flag with phone prefix is chosen
    And new invalid phone number consisting of random digits is entered
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save phone in their profile blank (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Telefon field is clicked
    And new country flag with phone prefix is chosen
    And the rest of the number is blank
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave phone changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Telefon field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Letzte Adresse" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Letzte Adresse" and its fields named correctly

  Scenario: User should be able to change their Most recent address (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Letzte Adresse field is clicked
    And new valid Straße + Hausnummer are entered
    And new Adresszeile 2 (optional) is entered
    And new Postleitzahl is entered
    And new Stadt is entered
    And new Region/Bundesland is entered
    And new Land is chosen
    And "Speichern" button is clicked
    Then the user should see the full updated Most recent address

  Scenario: User should not be able to save Most recent address in their profile blank (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Letzte Adresse field is clicked
    And Straße + Hausnummer fields are blank
    And Adresszeile 2 (optional) field is blank
    And Postleitzahl field is blank
    And Stadt field is blank
    And Region/Bundesland field is blank
    And Land field is blank
    And "Speichern" button is clicked
    Then an error message near mandatory fields should be displayed

  Scenario: User should not be able to change their Most recent address to numbers or special symbols (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Letzte Adresse field is clicked
    And Straße + Hausnummer fields are filled with numbers or special symbols
    And Adresszeile 2 (optional) field is filled with numbers or special symbols
    And Postleitzahl field is filled with numbers or special symbols
    And Stadt field is filled with numbers or special symbols
    And Region/Bundesland field is filled with numbers or special symbols
    And Land field is chosen
    And "Speichern" button is clicked
    Then error messages should be displayed

  Scenario: User should not be able to insert SQL/XSS injection into their Most recent address in their profile (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Letzte Adresse field is clicked
    And simple SQL/XSS injections in all fields fields are inserted
    And "Speichern" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave address changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Letzte Adresse field is clicked
    And new valid Straße + Hausnummer are entered
    And new Adresszeile 2 (optional) is entered
    And new Postleitzahl is entered
    And new Stadt is entered
    And new Region/Bundesland is entered
    And new Land is chosen
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Überprüfung der Identität" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Überprüfung der Identität" named correctly

  Scenario: User should be able to verify their identity using QR code (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Überprüfung der Identität field is clicked
    And "Verifizierung starten" button is clicked
    And QR Code from Option 1 is scanned
    And "Legen wir los!" button on mobile phone is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Vielen dank!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should be able to verify their identity using link via SMS (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Überprüfung der Identität field is clicked
    And "Verifizierung starten" button is clicked
    And a valid phone number is entered
    And "Weiter" button is clicked
    And SMS with link is received
    And a link is opened
    And "Legen wir los!" button is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Vielen dank!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should not be able to verify their identity using invalid ID (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Überprüfung der Identität field is clicked
    And "Verifizierung starten" button is clicked
    And QR Code from Option 1 is scanned
    And "Legen wir los!" button on mobile phone is clicked
    And a photo of a cat is taken
    And passport is selected
    And "Fortfahren" button is clicked
    And a photo of a cat is taken
    And "Erneut versuchen" button is clicked
    And a photo of a cat is taken
    And a right variant of a photo is selected
    And a picture of the wall is taken
    And "Erneut versuchen" button is clicked
    And a picture of the wall is taken
    And a right variant of a photo is selected
    And a "Vielen dank!" screen is displayed
    Then the user should see unverified status in their Profile

  Scenario: User should be able to leave verification changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Überprüfung der Identität field is clicked
    And "Verifizierung starten" button is clicked
    And "Cross" icon is clicked
    And "Beenden" button is clicked
    And another "Cross" icon is clicked
    Then the user should see the Identity status has not been updated

  Scenario: User should be able to see "Geburtsdatum" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Geburtsdatum" named correctly

  Scenario: User should be able to change their Birth date (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Geburtsdatum field is clicked
    And day (Tag) is entered
    And month (Monat) is entered
    And year (Jahr) is entered
    And "Speichern" button is clicked
    Then the user should see an updated Birth date

  Scenario: User should not be able to change their Birth date to invalid (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Geburtsdatum field is clicked
    And invalid day (Tag) is entered
    And invalid month (Monat) is entered
    And invalid year (Jahr) is entered
    And "Speichern" button is clicked
    Then error message should be displayed

  Scenario: User should not be able to change their Birth date to blank (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Geburtsdatum field is clicked
    And day (Tag) is blank
    And month (Monat) is blank
    And year (Jahr) is blank
    And "Speichern" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Birth date changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Geburtsdatum field is clicked
    And day (Tag) is entered
    And month (Monat) is entered
    And year (Jahr) is entered
    And "Cross" icon is clicked
    Then the user should see the Birth date has not been updated

  Scenario: User should be able to see "Nationalität" section named correctly (German)
    Given the user is logged in
    And the profile is in German
    Then the user should see "Nationalität" named correctly

  Scenario: User should be able to change their Nationality (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Nationalität field is clicked
    And nationality is chosen
    And "Speichern" button is clicked
    Then the user should see an updated Nationality

  Scenario: User should not be able to change their Nationality to blank (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Nationalität field is clicked
    And "Bitte wähle deine Nationalität" option is chosen
    And "Speichern" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Nationality changes unsaved (German)
    Given the user is logged in
    And the profile is in German
    When the "Edit" icon near Nationalität field is clicked
    And nationality is chosen
    And "Cross" icon is clicked
    Then the user should see the Nationality has not been updated

  Scenario: User should be able to see "Nom complet" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "Full name" named correctly

  Scenario: User should be able to change their full name in profile (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near "Nom complet" field is clicked
    And new valid Prénom and Nom de famille are entered
    And "Enregistrer" button is clicked
    Then the user should see Full name in profile with the first letter on the avatar updated

  Scenario: User should not be able to insert SQL/XSS injection into their full name in their profile (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near "Nom complet" field is clicked
    And simple SQL/XSS injections in First name and Last name fields are inserted
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to change their full name in their profile to numbers or special symbols (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near "Nom complet" field is clicked
    And new invalid Prénom and Nom de famille are entered (containing of numbers or special symbols)
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save full name in their profile blank (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near "Nom complet" field is clicked
    And Prénom and Nom de famille are left empty
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill First and Last name fields in their profile with spaces (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near "Nom complet" field is clicked
    And Prénom and Nom de famille are filled with several spaces
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave Full name changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near "Nom complet" field is clicked
    And Prénom and Nom de famille are filled with new information
    And "Cross" icon is clicked
    Then the user should see the fields have not been updated

  Scenario: User should be able to see "E-mail" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "E-mail" named correctly

  Scenario: User should be able to change their email (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near E-mail field is clicked
    And new valid email is entered
    And "Enregistrer" button is clicked
    Then the user should see a confirmation email notification and a button to cancel the changes

    Scenario: User should not be able to change their email to numbers or special symbols (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near E-mail field is clicked
    And new invalid email is entered
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save email in their profile blank (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near E-mail field is clicked
    And E-mail field is left empty
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill Email field in their profile with spaces (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near E-mail field is clicked
    And E-mail field is filled with several spaces
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave email changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near E-mail field is clicked
    And E-mail field is filled with new email
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Téléphone" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "Téléphone" named correctly

    Scenario: User should be able to change their phone number (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Téléphone field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Enregistrer" button is clicked
    Then the user should see an updated phone number

    Scenario: User should not be able to change their phone number to random one (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Téléphone field is clicked
    And new country flag with phone prefix is chosen
    And new invalid phone number consisting of random digits is entered
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save phone in their profile blank (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Téléphone field is clicked
    And new country flag with phone prefix is chosen
    And the rest of the number is blank
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave phone changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Téléphone field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Adresse la plus récente" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "Adresse la plus récente" and its fields named correctly

  Scenario: User should be able to change their Most recent address (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Adresse la plus récente field is clicked
    And new valid Rue + numéro de rue are entered
    And new Ligne d'adresse 2 (facultative) is entered
    And new Code postal is entered
    And new Ville is entered
    And new État / Région is entered
    And new Pays is chosen
    And "Enregistrer" button is clicked
    Then the user should see the full updated Most recent address

  Scenario: User should not be able to save Most recent address in their profile blank (English)
    Given the user is logged in
    And the profile is in English
    When the "Edit" icon near Adresse la plus récente field is clicked
    And Rue + numéro de rue fields are blank
    And Ligne d'adresse 2 (facultative) field is blank
    And Code postal field is blank
    And Ville field is blank
    And État / Région field is blank
    And Pays field is blank
    And "Enregistrer" button is clicked
    Then an error message near mandatory fields should be displayed

  Scenario: User should not be able to change their Most recent address to numbers or special symbols (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Adresse la plus récente field is clicked
    And Rue + numéro de rue fields are filled with numbers or special symbols
    And Ligne d'adresse 2 (facultative) field is filled with numbers or special symbols
    And Code postal field is filled with numbers or special symbols
    And Ville field is filled with numbers or special symbols
    And État / Région field is filled with numbers or special symbols
    And Pays is chosen
    And "Enregistrer" button is clicked
    Then error messages should be displayed

  Scenario: User should not be able to insert SQL/XSS injection into their Most recent address in their profile (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Adresse la plus récente field is clicked
    And simple SQL/XSS injections in all fields fields are inserted
    And "Enregistrer" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave address changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Adresse la plus récente field is clicked
    And new valid Rue + numéro de rue are entered
    And new Ligne d'adresse 2 (facultative) is entered
    And new Code postal is entered
    And new Ville is entered
    And new État / Région is entered
    And new Pays is chosen
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Vérification de l'identité" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "Vérification de l'identité" named correctly

  Scenario: User should be able to verify their identity using QR code (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Vérification de l'identité field is clicked
    And "Commencer la vérification" button is clicked
    And QR Code from Option 1 is scanned
    And "C'est parti!" button on mobile phone is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Merci!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should be able to verify their identity using link via SMS (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Vérification de l'identité field is clicked
    And "Commencer la vérification" button is clicked
    And a valid phone number is entered
    And "Suivant" button is clicked
    And SMS with link is received
    And a link is opened
    And "C'est parti!" button is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Thank You!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should not be able to verify their identity using invalid ID (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Vérification de l'identité field is clicked
    And "Commencer la vérification" button is clicked
    And QR Code from Option 1 is scanned
    And "C'est parti!" button on mobile phone is clicked
    And a photo of a cat is taken
    And passport is selected
    And "Poursuivre" button is clicked
    And a photo of a cat is taken
    And "Réessayer" button is clicked
    And a photo of a cat is taken
    And a right variant of a photo is selected
    And a picture of the wall is taken
    And "Réessayer" button is clicked
    And a picture of the wall is taken
    And a right variant of a photo is selected
    And a "Merci!" screen is displayed
    Then the user should see unverified status in their Profile

  Scenario: User should be able to leave verification changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Vérification de l'identité field is clicked
    And "Commencer la vérification" button is clicked
    And "Cross" icon is clicked
    And "Quitter" button is clicked
    And another "Cross" icon is clicked
    Then the user should see the Identity status has not been updated

  Scenario: User should be able to see "Date de naissance" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "Date de naissance" named correctly

  Scenario: User should be able to change their Birth date (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Date de naissance field is clicked
    And day (jour) is entered
    And month (mois) is entered
    And year (année) is entered
    And "Enregistrer" button is clicked
    Then the user should see an updated Birth date

  Scenario: User should not be able to change their Birth date to invalid (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Date de naissance field is clicked
    And invalid day (jour) is entered
    And invalid month (mois) is entered
    And invalid year (année) is entered
    And "Enregistrer" button is clicked
    Then error message should be displayed

  Scenario: User should not be able to change their Birth date to blank (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Date de naissance field is clicked
    And day (jour) is blank
    And month (mois) is blank
    And year (année) is blank
    And "Enregistrer" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Birth date changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Date de naissance field is clicked
    And day (jour) is entered
    And month (mois) is entered
    And year (année) is entered
    And "Cross" icon is clicked
    Then the user should see the Birth date has not been updated

  Scenario: User should be able to see "Nationalité" section named correctly (French)
    Given the user is logged in
    And the profile is in French
    Then the user should see "Nationalité" named correctly

  Scenario: User should be able to change their Nationality (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Nationalité field is clicked
    And nationality is chosen
    And "Enregistrer" button is clicked
    Then the user should see an updated Nationality

  Scenario: User should not be able to change their Nationality to blank (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Nationalité field is clicked
    And "Veuillez choisir votre nationalité" option is chosen
    And "Enregistrer" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Nationality changes unsaved (French)
    Given the user is logged in
    And the profile is in French
    When the "Edit" icon near Nationalité field is clicked
    And nationality is chosen
    And "Cross" icon is clicked
    Then the user should see the Nationality has not been updated

  Scenario: User should be able to see "Повне ім'я" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Повне ім'я" named correctly

  Scenario: User should be able to change their full name in profile (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near "Повне ім'я" field is clicked
    And new valid Ім'я and Прізвище are entered
    And "Зберегти" button is clicked
    Then the user should see Full name in profile with the first letter on the avatar updated

  Scenario: User should not be able to change their full name in their profile to numbers or special symbols (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near "Повне ім'я" field is clicked
    And new invalid Ім'я and Прізвище are entered (containing of numbers or special symbols)
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save full name in their profile blank (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near "Повне ім'я" field is clicked
    And Ім'я and Прізвище are left empty
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to insert SQL/XSS injection into their full name in their profile (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near "Повне ім'я" field is clicked
    And simple SQL/XSS injections in First name and Last name fields are inserted
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill First and Last name fields in their profile with spaces (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near "Повне ім'я" field is clicked
    And Ім'я and Прізвище are filled with several spaces
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave Full name changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near "Повне ім'я" field is clicked
    And Ім'я and Прізвище are filled with new information
    And "Cross" icon is clicked
    Then the user should see the fields have not been updated

  Scenario: User should be able to see "Електронна пошта" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Електронна пошта" named correctly

  Scenario: User should be able to change their email (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Електронна пошта field is clicked
    And new valid email is entered
    And "Зберегти" button is clicked
    Then the user should see a confirmation email notification and a button to cancel the changes

    Scenario: User should not be able to change their email to numbers or special symbols (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Електронна пошта field is clicked
    And new invalid email is entered
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save email in their profile blank (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Електронна пошта field is clicked
    And Email field is left empty
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill Email field in their profile with spaces (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Електронна пошта field is clicked
    And Електронна пошта field is filled with several spaces
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave email changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Електронна пошта field is clicked
    And Електронна пошта field is filled with new email
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Телефон" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Телефон" named correctly

    Scenario: User should be able to change their phone number (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Зберегти" button is clicked
    Then the user should see an updated phone number

    Scenario: User should not be able to change their phone number to random one (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And new invalid phone number consisting of random digits is entered
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save phone in their profile blank (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And the rest of the number is blank
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave phone changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Остання адреса" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Остання адреса" and its fields named correctly

  Scenario: User should be able to change their Most recent address (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Остання адреса field is clicked
    And new valid Вулиця + номер вулиці are entered
    And new Адресний рядок 2 (необов'язково) is entered
    And new ЗІП код is entered
    And new Місто is entered
    And new Держава / обл is entered
    And new Країна is chosen
    And "Зберегти" button is clicked
    Then the user should see the full updated Most recent address

  Scenario: User should not be able to save Most recent address in their profile blank (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Остання адреса field is clicked
    And Вулиця + номер вулиці fields are blank
    And Адресний рядок 2 (необов'язково) field is blank
    And ЗІП код field is blank
    And Місто field is blank
    And Держава / обл field is blank
    And Країна field is blank
    And "Зберегти" button is clicked
    Then an error message near mandatory fields should be displayed

  Scenario: User should not be able to change their Most recent address to numbers or special symbols (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Остання адреса field is clicked
    And Вулиця + номер вулиці fields are filled with numbers or special symbols
    And Адресний рядок 2 (необов'язково) field is filled with numbers or special symbols
    And ЗІП код field is filled with numbers or special symbols
    And Місто field is filled with numbers or special symbols
    And Держава / обл field is filled with numbers or special symbols
    And Країна field is chosen
    And "Зберегти" button is clicked
    Then error messages should be displayed

  Scenario: User should not be able to insert SQL/XSS injection into their Most recent address in their profile (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Остання адреса field is clicked
    And simple SQL/XSS injections in all fields fields are inserted
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave address changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Остання адреса field is clicked
    And new valid Вулиця + номер вулиці are entered
    And new Адресний рядок 2 (необов'язково) is entered
    And new ЗІП код is entered
    And new Місто is entered
    And new Держава / обл is entered
    And new Країна is chosen
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Перевірка особи" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Перевірка особи" named correctly

  Scenario: User should be able to verify their identity using QR code (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Перевірка особи field is clicked
    And "Почніть перевірку" button is clicked
    And QR Code from Option 1 is scanned
    And "Вперед!" button on mobile phone is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Дякуємо!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should be able to verify their identity using link via SMS (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Перевірка особи field is clicked
    And "Почніть перевірку" button is clicked
    And a valid phone number is entered
    And "Далі" button is clicked
    And SMS with link is received
    And a link is opened
    And "Вперед!" button is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Дякуємо!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should not be able to verify their identity using invalid ID (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Перевірка особи field is clicked
    And "Почніть перевірку" button is clicked
    And QR Code from Option 1 is scanned
    And "Вперед!" button on mobile phone is clicked
    And a photo of a cat is taken
    And passport is selected
    And "Далі" button is clicked
    And a photo of a cat is taken
    And "Спробувати знову" button is clicked
    And a photo of a cat is taken
    And a right variant of a photo is selected
    And a picture of the wall is taken
    And "Спробувати знову" button is clicked
    And a picture of the wall is taken
    And a right variant of a photo is selected
    And a "Дякуємо!" screen is displayed
    Then the user should see unverified status in their Profile

  Scenario: User should be able to leave verification changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Перевірка особи field is clicked
    And "Почніть" button is clicked
    And "Cross" icon is clicked
    And "Вийти" button is clicked
    And another "Cross" icon is clicked
    Then the user should see the Identity status has not been updated

  Scenario: User should be able to see "Дата народження" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Дата народження" named correctly

  Scenario: User should be able to change their Birth date (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Дата народження field is clicked
    And day is entered
    And month is entered
    And year is entered
    And "Зберегти" button is clicked
    Then the user should see an updated Birth date

  Scenario: User should not be able to change their Birth date to invalid (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Дата народження field is clicked
    And invalid day is entered
    And invalid month is entered
    And invalid year is entered
    And "Зберегти" button is clicked
    Then error message should be displayed

  Scenario: User should not be able to change their Birth date to blank (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Дата народження field is clicked
    And day is blank
    And month is blank
    And year is blank
    And "Зберегти" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Birth date changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Дата народження field is clicked
    And day is entered
    And month is entered
    And year is entered
    And "Cross" icon is clicked
    Then the user should see the Birth date has not been updated

  Scenario: User should be able to see "Національність" section named correctly (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    Then the user should see "Національність" named correctly

  Scenario: User should be able to change their Nationality (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Національність field is clicked
    And nationality is chosen
    And "Зберегти" button is clicked
    Then the user should see an updated Nationality

  Scenario: User should not be able to change their Nationality to blank (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Національність field is clicked
    And "Будь ласка, виберіть свою національність" option is chosen
    And "Зберегти" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Nationality changes unsaved (Ukrainian)
    Given the user is logged in
    And the profile is in Ukrainian
    When the "Edit" icon near Національність field is clicked
    And nationality is chosen
    And "Cross" icon is clicked
    Then the user should see the Nationality has not been updated

     Scenario: User should be able to see "Полное имя" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Полное имя" named correctly

  Scenario: User should be able to change their full name in profile (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near "Полное имя" field is clicked
    And new valid Имя and Фамилия are entered
    And "Сохранить" button is clicked
    Then the user should see Full name in profile with the first letter on the avatar updated

  Scenario: User should not be able to insert SQL/XSS injection into their full name in their profile (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near "Полное имя" field is clicked
    And simple SQL/XSS injections in First name and Last name fields are inserted
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to change their full name in their profile to numbers or special symbols (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near "Полное имя" field is clicked
    And new invalid Имя and Фамилия are entered (containing of numbers or special symbols)
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save full name in their profile blank (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near "Полное имя" field is clicked
    And Имя and Фамилия are left empty
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill First and Last name fields in their profile with spaces (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near "Полное имя" field is clicked
    And Имя and Фамилия are filled with several spaces
    And "Зберегти" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave Full name changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near "Полное имя" field is clicked
    And Имя and Фамилия are filled with new information
    And "Cross" icon is clicked
    Then the user should see the fields have not been updated

  Scenario: User should be able to see "Электронная почта" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Электронная почта" named correctly

  Scenario: User should be able to change their email (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Электронная почта field is clicked
    And new valid email is entered
    And "Сохранить" button is clicked
    Then the user should see a confirmation email notification and a button to cancel the changes

    Scenario: User should not be able to change their email to numbers or special symbols (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Электронная почта field is clicked
    And new invalid email is entered
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save email in their profile blank (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Электронная почта field is clicked
    And Email field is left empty
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to fill Email field in their profile with spaces (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Электронная почта field is clicked
    And Электронная почта field is filled with several spaces
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave email changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Электронная почта field is clicked
    And Электронная почта field is filled with new email
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Телефон" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Телефон" named correctly

    Scenario: User should be able to change their phone number (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Сохранить" button is clicked
    Then the user should see an updated phone number

    Scenario: User should not be able to change their phone number to random one (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And new invalid phone number consisting of random digits is entered
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should not be able to save phone in their profile blank (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And the rest of the number is blank
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave phone changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Телефон field is clicked
    And new country flag with phone prefix is chosen
    And new valid phone number is entered
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Последний адрес" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Последний адрес" and its fields named correctly

  Scenario: User should be able to change their Most recent address (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Последний адрес field is clicked
    And new valid Улица + номер улицы are entered
    And new Адресная строка 2 (необязательно) is entered
    And new Почтовый индекс is entered
    And new Город is entered
    And new Государство / регион is entered
    And new Страна is chosen
    And "Сохранить" button is clicked
    Then the user should see the full updated Most recent address

  Scenario: User should not be able to save Most recent address in their profile blank (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Последний адрес field is clicked
    And Улица + номер улицы fields are blank
    And Адресная строка 2 (необязательно) field is blank
    And Почтовый индекс field is blank
    And Город field is blank
    And Государство / регион field is blank
    And Страна field is blank
    And "Сохранить" button is clicked
    Then an error message near mandatory fields should be displayed

  Scenario: User should not be able to change their Most recent address to numbers or special symbols (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Последний адрес field is clicked
    And Улица + номер улицы fields are filled with numbers or special symbols
    And Адресная строка 2 (необязательно) field is filled with numbers or special symbols
    And Почтовый индекс field is filled with numbers or special symbols
    And Город field is filled with numbers or special symbols
    And Государство / регион field is filled with numbers or special symbols
    And Страна field is chosen
    And "Сохранить" button is clicked
    Then error messages should be displayed

  Scenario: User should not be able to insert SQL/XSS injection into their Most recent address in their profile (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Последний адрес field is clicked
    And simple SQL/XSS injections in all fields fields are inserted
    And "Сохранить" button is clicked
    Then an error message should be displayed

  Scenario: User should be able to leave address changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Последний адрес field is clicked
    And new valid Улица + номер улицы are entered
    And new Адресная строка 2 (необязательно) is entered
    And new Почтовый индекс is entered
    And new Город is entered
    And new Государство / регион is entered
    And new Страна is chosen
    And "Cross" icon is clicked
    Then the user should see the field has not been updated

  Scenario: User should be able to see "Проверка личности" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Проверка личности" named correctly

  Scenario: User should be able to verify their identity using QR code (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Проверка личности field is clicked
    And "Стартовая проверка" button is clicked
    And QR Code from Option 1 is scanned
    And "Вперед!" button on mobile phone is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Спасибо!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should be able to verify their identity using link via SMS (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Проверка личности field is clicked
    And "Стартовая проверка" button is clicked
    And a valid phone number is entered
    And "Далее" button is clicked
    And SMS with link is received
    And a link is opened
    And "Вперед!" button is clicked
    And a photo of ID is taken
    And a selfie is taken
    And verification data is submitted
    And a "Спасибо!" screen is displayed
    Then the user should see verified status in their Profile

  Scenario: User should not be able to verify their identity using invalid ID (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Проверка личности field is clicked
    And "Стартовая проверка" button is clicked
    And QR Code from Option 1 is scanned
    And "Вперед!" button on mobile phone is clicked
    And a photo of a cat is taken
    And passport is selected
    And "Продолжить" button is clicked
    And a photo of a cat is taken
    And "Попытаться еще раз" button is clicked
    And a photo of a cat is taken
    And a right variant of a photo is selected
    And a picture of the wall is taken
    And "Попытаться еще раз" button is clicked
    And a picture of the wall is taken
    And a right variant of a photo is selected
    And a "Спасибо!" screen is displayed
    Then the user should see unverified status in their Profile

  Scenario: User should be able to leave verification changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Проверка личности field is clicked
    And "Стартовая проверка" button is clicked
    And "Cross" icon is clicked
    And "Выход" button is clicked
    And another "Cross" icon is clicked
    Then the user should see the Identity status has not been updated

  Scenario: User should be able to see "Дата рождения" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Дата рождения" named correctly

  Scenario: User should be able to change their Birth date (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Дата рождения field is clicked
    And day is entered
    And month is entered
    And year is entered
    And "Сохранить" button is clicked
    Then the user should see an updated Birth date

  Scenario: User should not be able to change their Birth date to invalid (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Дата рождения field is clicked
    And invalid day is entered
    And invalid month is entered
    And invalid year is entered
    And "Сохранить" button is clicked
    Then error message should be displayed

  Scenario: User should not be able to change their Birth date to blank (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Дата рождения field is clicked
    And day is blank
    And month is blank
    And year is blank
    And "Сохранить" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Birth date changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Дата рождения field is clicked
    And day is entered
    And month is entered
    And year is entered
    And "Cross" icon is clicked
    Then the user should see the Birth date has not been updated

  Scenario: User should be able to see "Национальность" section named correctly (Russian)
    Given the user is logged in
    And the profile is in Russian
    Then the user should see "Национальность" named correctly

  Scenario: User should be able to change their Nationality (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Национальность field is clicked
    And nationality is chosen
    And "Сохранить" button is clicked
    Then the user should see an updated Nationality

  Scenario: User should not be able to change their Nationality to blank (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Национальность field is clicked
    And "Пожалуйста, выберите свою национальность" option is chosen
    And "Сохранить" button is clicked
    Then error message should be displayed

  Scenario: User should be able to leave Nationality changes unsaved (Russian)
    Given the user is logged in
    And the profile is in Russian
    When the "Edit" icon near Национальность field is clicked
    And nationality is chosen
    And "Cross" icon is clicked
    Then the user should see the Nationality has not been updated