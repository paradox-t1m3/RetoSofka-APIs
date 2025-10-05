package demoblaze;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import utils.ReportUtil;

public class TestRunner {
    @Test
    void userLoginTest() {
        Results results = Runner.path("classpath:demoblaze").outputCucumberJson(true).parallel(1);
        ReportUtil.gerateReports(results.getReportDir());
        Assertions.assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
