const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "datastorecrud": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://uhv73cu3mnabfpc6lsuih2bmqa.appsync-api.us-east-1.amazonaws.com/graphql",
                    "region": "us-east-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-bfrgkx5rajfv5mhxvdykwtd6qa"
                }
            }
        }
    }
}''';