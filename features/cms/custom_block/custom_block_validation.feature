@custom_block
Feature: Custom block validation
    In order to avoid making mistakes when managing a custom block
    As an Administrator
    I want to be prevented from adding it without specifying required fields

    Background:
        Given I am logged in as an administrator

    @ui
    Scenario: Trying to add a new custom block without specifying its name
        Given I want to add a new custom block
        When I set its body to "Free shipping for orders over 10$!"
        And I add it
        Then I should be notified that name is required
