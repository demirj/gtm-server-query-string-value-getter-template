___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Query string value Getter",
  "categories": ["TAG_MANAGEMENT"],
  "description": "Return the value of a provided query string name.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "inputUrl",
    "displayName": "URL",
    "simpleValueType": true,
    "help": "Please provide a valid URL with query string parameters.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "param",
    "displayName": "Query String Name",
    "simpleValueType": true,
    "help": "Provide the name of the query string, from whom you want to return the value.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const parseUrl = require('parseUrl');
const url = parseUrl(data.inputUrl);
const userParam = data.param;

return url.searchParams[userParam] || 'n/a';


___TESTS___

scenarios: []


___NOTES___

Created on 13.2.2023, 14:22:32


