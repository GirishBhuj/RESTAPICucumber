Feature: Verify Add place API

Scenario: Verify if Place is being Succesfully added using AddPlaceAPI  
	Given Add Place Payload with "<name>"  "<language>" "<address>"
	When user calls "AddPlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And verify place_Id created maps to "<name>" using "getPlaceAPI"
	
Examples:
	|name 	 | language |address		       |
	|Bantahouse |  Kolhapur |Manu City mart|
#	|BBhouse | Spanish  |Sea cross center  |
	 