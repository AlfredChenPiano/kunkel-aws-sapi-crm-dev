function fn() {
    /* DO NOT MODIFY CODE BLOCK BEGIN */
     var outputLogFilter = Java.type('com.sfdc.bt.anytest.util.OutputLogFilter');
     var logModifier = outputLogFilter.INSTANCE;
    karate.configure('logModifier', logModifier);
    
    if (karate.properties['karate.server_https'] == 'true') {
        protocol = 'https';
        karate.configure('ssl', true);
    } 
    /* DO NOT MODIFY CODE BLOCK END */
    
    
    /* For masking any sensitive information in headers add the comma delimited 
    entries in the header mask entries */
     logModifier.setHeaderMaskEntries('client_id,client_secret');
}