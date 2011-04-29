Feature: Browsing visitors
  In order to know whether I want to go to initLab
  As anybody
  I want to know who is there right now

  Scenario: Browsing visitors
    Given that the following people have registered:
      | Name          | MAC Address       |
      | Paul Atreides | 00:00:00:00:00:01 |
      | Chani         | 00:00:00:00:00:02 |
    And that the following computers are currently active:
      | 00:00:00:00:00:02 |
      | 00:00:00:00:00:03 |
    When I open the dashboard
    Then "Chani" is currently visiting
    But "Paul Atreides" is not currenly visiting
