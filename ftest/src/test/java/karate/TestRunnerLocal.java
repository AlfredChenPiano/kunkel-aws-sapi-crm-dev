package karate;

import com.intuit.karate.junit5.Karate;
import com.sfdc.bt.anytest.util.BaseTestRunner;

public class TestRunnerLocal extends BaseTestRunner {

    @Karate.Test
    Karate test()  {
        /* By default ~@ignore will run all the test cases under karate/test/main folder.The value can be 
         * changed to run the specific test cases required */
        return Karate.run("classpath:karate/features").tags("dev").relativeTo(getClass());
    }

}