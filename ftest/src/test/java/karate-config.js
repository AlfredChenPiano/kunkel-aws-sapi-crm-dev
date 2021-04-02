function fn() {
    /* For local execution set the below properties as java run time properties. For the pipeline 
       execution all the properties will be retrieved  
       from cps except the karate specific properties such as karate.test.environment */
    var config = {
        kunkel-aws-sapi-crm-dev_url : karate.properties['kunkel-aws-sapi-crm-dev_url'],
        kunkel-aws-sapi-crm-dev_client_id : karate.properties['kunkel-aws-sapi-crm-dev_client_id'],
        kunkel-aws-sapi-crm-dev_client_secret : karate.properties['kunkel-aws-sapi-crm-dev_client_secret'],
        test_environment : karate.properties['karate.test_environment']
    };
    return config;
    }