package karate;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.sfdc.bt.anytest.util.AnyTestException;
import com.sfdc.bt.anytest.util.BaseTestRunner;

/* 
 * DO NOT MODIFY THIS CLASS
 * This is the place holder class primarily used by build pipeline to execute the test case based on the anytest.yaml setup.
 * Any modification to this class will lead to the error in the pipeline test execution.For testing in the local machine 
 * please use the TestRunnerLocal file available in the same path  
 * 
 */
public class TestRunner extends BaseTestRunner {
    private static final Logger logger = LoggerFactory.getLogger(TestRunner.class);

    /* DO NOT MODIFY THIS METHOD */
    @Test
    void testParallel() throws AnyTestException {
        logger.info("Test execution starts with the tag value : " + getTags());
        /* The value for get getTags() will be retrieved from system property karate.tags */
        Results results = Runner.path("classpath:karate/features").tags(getTags()).parallel(1);
        if (results!=null && results.getScenarioCount()>0) {
            generateReport(results.getReportDir());
        }
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }


}