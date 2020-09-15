package outplay.pageObjects;

import java.awt.TextArea;
import java.awt.TextComponent;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import junit.framework.Assert;

public class LoginPage {
	public WebDriver driver;
	public LoginPage(WebDriver rdriver)
	{
		
	this.driver=rdriver;
	PageFactory.initElements(rdriver, this);
  	}
	@FindBy(xpath="//input[@type='email']")
	@CacheLookup
	WebElement username;
	
	@FindBy(xpath="//input[@type='password']")
	@CacheLookup
	WebElement password;
	

	@FindBy(xpath="//button[@type='submit']")
	@CacheLookup
	WebElement loginBtn;
	
	
	@FindBy(xpath="/html/body/app-root/app-body-layout/div/div[1]/app-page-content/div[1]/div/app-header/nav/div[4]/div[4]/ul/li/a/span")
	@CacheLookup
	WebElement settings;

	@FindBy(xpath="/html/body/app-root/app-body-layout/div/div[1]/app-page-content/div[1]/div/app-header/nav/div[4]/div[4]/ul/li/div/a[5]")
	@CacheLookup
	WebElement signout;
	
	@FindBy(xpath="/html/body/app-root/app-login-layout/div/section/div/app-login/div/div/div[2]/span[1]/span/a")
	@CacheLookup
	WebElement forgotpassword;
	
	@FindBy(xpath = "/html/body/app-root/app-login-layout/div/section/div/app-forgot-password/div/div/div[1]/div[2]/div/div[2]/form/div[3]/button")
	@CacheLookup
	WebElement submit;
	
	@FindBy(xpath = "//*[@id=\"showtoast\"]")
	@CacheLookup
	WebElement showtoast1;
	
	public void setUserName(String name)
	{
		username.clear();
		username.sendKeys(name);
	}
	
	public void setPassWord(String passwordText)
	{
		password.clear();
		password.sendKeys(passwordText);
	}
	
	public void clickBtn()
	{
		loginBtn.click();
		driver.manage().window().maximize();
	}
	
	public void clicksettings()
	{
		settings.click();
		
		}
	
	public void signout()
	{
		signout.click();
	}
	public void verifyTitle(String title){
		
		Assert.assertEquals(title, driver.getTitle());
	}
	
	public void verifyErrormessage(String actual_msg) throws InterruptedException{
		
		//String actual_msg1 =  new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.xpath("xpath=//div[@id='toast-container']/div/div"))).getText();
		
		//WebElement sur = new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOfElementLocated(By.xpath("xpath=//*[@id=\"toast-container\"]/div/div[1]")));
		//String actual_msg1= driver.findElement(By.className("toast-message")).getText();
		String actual_msg1= driver.findElement(By.xpath("//div[@id='toast-container']/div[1]")).getText();
		
		//assert actual_msg1 == "Invaid Email or Password";

		//System.out.println("Found toast container");
		System.out.println(actual_msg1);
		//System.out.println(sur.isDisplayed());
		//System.out.println(sur.getText());
	}
	
	public void emailErrormessage(String email_error) {
		String email_error1 = driver.findElement(By.xpath("/html/body/app-root/app-login-layout/div/section/div/app-login/div/div/div[1]/div[2]/form/div/div[1]/div[1]")).getText();
		Assert.assertEquals(email_error, email_error1);
		
	}
	
	public void passwordErrormessage(String pass_error) {
		String pass_error1 = driver.findElement(By.xpath("/html/body/app-root/app-login-layout/div/section/div/app-login/div/div/div[1]/div[2]/form/div/div[2]/div")).getText();
		Assert.assertEquals(pass_error, pass_error1);
}
	public void forgotPassword() {
		forgotpassword.click();
	}
	
	public void submit() {
		submit.click();
	}
	public void fperrorMessage(String fp_noemail_error) {
		String fp_noemail_error1 = driver.findElement(By.xpath("/html/body/app-root/app-login-layout/div/section/div/app-forgot-password/div/div/div[1]/div[2]/div/div[2]/form/div[1]/div[1]")).getText();
		Assert.assertEquals(fp_noemail_error, fp_noemail_error1);
	}
	
		public void showtoast() {
		
	 		showtoast1.click();
		
		
		String fp_noemail_error2 = driver.findElement(By.xpath("//*[@id=\"toast-container\"]/div")).getText();
		System.out.println(fp_noemail_error2);
	}
	
	}


