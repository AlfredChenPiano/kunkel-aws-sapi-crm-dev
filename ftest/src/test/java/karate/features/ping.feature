Feature: Test scenarios for kunkel-aws-sapi-crm-dev API for ping method

  Background:
   	* url kunkel-aws-sapi-crm-dev_url 
    * header client_id = kunkel-aws-sapi-crm-dev_client_id
    * header client_secret = kunkel-aws-sapi-crm-dev_client_secret
    * path 'api/v1/ping'
    * def env_test_data_location = 'karate/data/' + test_environment
    * def common_test_data_location = 'karate/data/common'
   
   
    
  @tc-ping-001 @dev @qa  
  Scenario: tc-ping-001
    For a simple ping request with out a cloudhub client and clent sercret the API should 
    return exepcted authentication denied message
		
    Given header mock_scenario = '1'
    Given header client_id = 'invalid_client_id'
    Given header client_secret = 'invalid_client_secret'
    When method GET
    Then status 401
    And match $response == {error:Invalid Client}
    
 	@tc-ping-003 @dev @qa 
  Scenario: tc-ping-002
    For a simple ping request with valid client id ,client secret and transaction id the API should 
    return exepcted valid response showing the staus as live
     
    * def expected_response =  read (env_test_data_location + '/ping_response_1.json')
   
    Given header mock_scenario = '2'
    Given header x-transaction-id = '1234'
    When method GET
    Then status 200 
    And match $response contains expected_response
   
  
  