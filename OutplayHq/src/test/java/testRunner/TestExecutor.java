package testRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
	features=".//Feature/Login.feature",
	glue="outplay.stepDefinitions",
	dryRun=false,
	monochrome=true,
	//plugin= {"pretty","html:test-output"},
	plugin = { "com.cucumber.listener.ExtentCucumberFormatter:Reports/cucumber-reports/report.html"},
	tags = {"@suresh"}
		)

public class TestExecutor {

}
