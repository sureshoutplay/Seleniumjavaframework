package testEngine;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Browser {
	WebDriver driver;
	public WebDriver getBrwoser(String browserName) {
		if(browserName.equals("firefox"))
		{
			System.setProperty("webdriver.gecko.driver","C:\\Users\\AppVirality\\eclipse-workspace\\OutplayHq\\Drivers\\geckodriver.exe");
			driver=new FirefoxDriver();
		}
		else if(browserName.equals("chrome"))
		{
			 System.setProperty("webdriver.chrome.driver","C:\\Users\\AppVirality\\eclipse-workspace\\OutplayHq\\Drivers\\chromedriver.exe");
				driver=new ChromeDriver();	
				}
		return driver;
		
	}
	
}