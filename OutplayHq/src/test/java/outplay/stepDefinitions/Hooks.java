package outplay.stepDefinitions;


import cucumber.api.java.After;
import cucumber.api.java.Before;
import testEngine.Browser;

public class Hooks {
	
	@Before
	public void beforeScenario()
	{
		System.out.println("***** Before Scenario *****");
		Common.launchBrowser();
		//Browser.getBrwoser("chrome");
	}
	@After
public void afterScenario()
	{
		System.out.println("***** After Scenario *****");
//		Common.closeBrowser();
//		Browser.closeBrowser();
	}

}
