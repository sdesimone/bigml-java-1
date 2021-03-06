Feature: Testing Whizzml Script REST api calls

    Scenario Outline: Scenario: Successfully creating a whizzml library:
        Given I create a whizzml script from a excerpt of code "<source_code>"
        And I wait until the script is ready less than <time_1> secs
        And I update the script name to "<script_name>"
        When I wait until the script is ready less than <time_2> secs
        Then the script name is "<script_name>"
        Then the script code is "<source_code>"

        Examples:
        | source_code   | time_1  | time_2  | script_name |
        | (+ 1 1)   | 10      | 10      | my script |
