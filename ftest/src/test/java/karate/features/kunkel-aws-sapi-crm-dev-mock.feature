@mock @ignore
Feature: Test double for kunkel-aws-sapi-crm-dev API

Background:
    * configure responseHeaders = { 'Content-Type': 'application/json' }
    * def env_test_data_location = 'karate/data/' + test_environment
    * def common_test_data_location = 'karate/data/common'		
		
Scenario: pathMatches('/api/v1/ping') && headerContains('mock_scenario', '1')
	  * def responseStatus = 401
	  * def response = { error: Invalid Client}
	  
Scenario: pathMatches('/api/v1/ping') && headerContains('mock_scenario', '2')
	  * def responseStatus = 200
	  * def response = read (env_test_data_location + '/ping_response_1.json')