package outplay.stepDefinitions;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Common {
	
	static public String browser="GC";
	static public WebDriver driver;
	
	public static void launchBrowser()
	{
		if(browser.equals("FF"))
		{
			System.setProperty("webdriver.gecko.driver", "C:\\Users\\AppVirality\\eclipse-workspace\\OutplayHq\\Drivers\\geckodriver.exe");
			driver=new FirefoxDriver();
		}
		else if(browser.equals("GC"))
		{
			System.setProperty("webdriver.chrome.driver", "C:\\Users\\AppVirality\\eclipse-workspace\\OutplayHq\\Drivers\\chromedriver.exe");
			driver=new ChromeDriver();
		}
		driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
		driver.manage().timeouts().pageLoadTimeout(5,TimeUnit.MINUTES);
	}
//	public static void closeBrowser()
//	{
//		driver.quit();
//	}

}
