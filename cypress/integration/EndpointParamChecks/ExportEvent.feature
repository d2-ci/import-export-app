Feature: The user should be able to export events

    # Use defaults explicitly
    Background:
        Given the user is on the event export page
        And the more options are visible
        And the following options are set
            | name                | value       | label                                     |
            | program             | lxAQ7Zs9VYR | Antenatal care visit                      |
            | programStages       | dBwrot7S420 | Antenatal care visit - Program rules demo |
            | idScheme            | UID         | Uid                                       |
            | dataElementIdScheme | UID         | Uid                                       |
            | orgUnitIdScheme     | UID         | Uid                                       |
            | startDate           | 2020-01-03  |                                           |
            | endDate             | 2020-01-05  |                                           |
            | format              | json        |                                           |
            | compression         | zip         |                                           |
            | includeDeleted      | false       |                                           |
            | inclusion           | SELECTED    |                                           |
        And the Sierra Leone org unit has been selected

    Scenario: The user submits the form with the default values
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different org unit
        Given the user expands the root level of the org unit tree
        When the user selects the "Bo" org unit
        And the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different program
        Given the "program" input is set to "Child Programme"
        And the "programStages" input is set to "Antenatal care visit - Program rules demo"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different program stage
        Given the "programStages" input is set to "Antenatal care visit - Program rules demo"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different id scheme
        Given the "idScheme" input is set to "Code"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different data element id scheme
        Given the "dataElementIdScheme" input is set to "Code"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different org unit id scheme
        Given the "orgUnitIdScheme" input is set to "Code"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different start date
        Given the "startDate" input is set to "2020-01-04"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different end date
        Given the "endDate" input is set to "2020-01-06"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different format
        Given the "format" input is set to "xml"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a no compression
        Given the "compression" input is set to ""
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects to include deleted
        Given the "includeDeleted" input is set to "true"
        When the export form is submitted
        Then the download request is sent with the right parameters

    Scenario: The user selects a different inclusion
        Given the "inclusion" input is set to "CHILDREN"
        When the export form is submitted
        Then the download request is sent with the right parameters
