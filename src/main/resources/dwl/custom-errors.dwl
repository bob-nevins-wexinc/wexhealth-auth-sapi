%dw 2.0
output application/java
---
{
	"ANYPOINT-MQ:DESTINATION_NOT_FOUND": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description,
		"errorType": "MULE:EXPRESSION"
	},
	"UNKNOWN": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description ,
		"errorType": "MULE:EXPRESSION"
	},
	"VALIDATION:INVALID_BOOLEAN": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description, // read error from the application
		"errorType": "MULE:EXPRESSION"
	},
	"MULE:EXPRESSION": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description,
		"errorType": "MULE:EXPRESSION"
	},
	"SALESFORCE:INVALID_INPUT": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description, // read error from the application
		"errorType": "MULE:EXPRESSION"		
	},
	"MULE:RETRY_EXHAUSTED": {
		"errorCode": 503,
		"reason": "UNKNOWN",
		"defaultError": error.description, // read error from the application
		"errorType": "MULE:RETRY_EXHAUSTED"			
	},
	"HTTP:SERVICE_UNAVAILABLE": {
		"errorCode": 503,
		"reason": "UNKNOWN",
		"defaultError": error.description, // read error from the application
		"errorType": "HTTP:SERVICE_UNAVAILABLE"			
	},
	"ANY": {
		"errorCode": 500,
		"reason": "UNKNOWN",
		"defaultError": error.description, // read error from the application
		"errorType": "MULE:EXPRESSION"	
	}	
}