Feature: Edit Profile
@wip
Scenario: A volunteer edits their profile
  Given a Volunteer exists
    And the user is on the edit profile page
  When the user updates their basic info 
    And the user submits the form
  Then his profile should be updated
