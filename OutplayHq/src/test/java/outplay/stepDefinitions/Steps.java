package outplay.stepDefinitions;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import outplay.pageObjects.Createsequence;
import outplay.pageObjects.LoginPage;
import testEngine.Browser;
import utilities.Csvreader;

public class Steps extends Common{
	//private static final String String = null;
	//WebDriver driver;
	LoginPage loginPage;
	String subject;
	String body;
	Createsequence createsequence;
	Csvreader csvreader;
	
	@Given("^Initilize$")
	public void initilize() throws Throwable {
		loginPage=new LoginPage(driver);
		createsequence=new Createsequence(driver);
	}
	@Given("^User Launch chrome browser$")
	public void user_Launch_chrome_browser() throws Throwable {
        driver=new Browser().getBrwoser("chrome");	
		//System.setProperty("webdriver.chrome.driver","E:\\Driver Executables\\chromedriver.exe");
		//driver=new ChromeDriver();	
		//driver.manage().timeouts().implicitlyWait(120,TimeUnit.SECONDS);
		loginPage=new LoginPage(driver);
		
		createsequence=new Createsequence(driver);
	}

	@When("^open the url \"([^\"]*)\"$")
	public void open_the_url(String url) throws Throwable {
	   driver.get(url);
	 driver.manage().window().maximize();	   
	}

	@When("^Enter username \"([^\"]*)\"$")
	public void enter_username(String name) throws Throwable {
		loginPage.setUserName(name);
	}

	@When("^Enter password \"([^\"]*)\"$")
	public void enter_password(String password) throws Throwable {
		loginPage.setPassWord(password);
	}
	
	@Then("^verify No email error message \"([^\"]*)\"$")
	public void verify_No_email_error_message(String fp_noemail_error) throws Throwable {
	    loginPage.fperrorMessage(fp_noemail_error);
	}

	

@When("^Enter username$")
public void enter_username(DataTable tabledata) throws Throwable {
	List<List<String>> data =tabledata.raw();
	loginPage.setUserName(data.get(0).get(0));
}

@When("^Enter password$")
public void enter_password(DataTable tabledata) throws Throwable {
	List<List<String>> data =tabledata.raw();
	loginPage.setPassWord(data.get(0).get(0));
	}


	@When("^click on login button$")
	public void click_on_login_button() throws Throwable {
	   	loginPage.clickBtn();
      	}
	
	@When("^click on show toast button$")
	public void click_on_show_toast_button() throws Throwable {
	  loginPage.showtoast();
	}

		    
	@When("^verify email error message \"([^\"]*)\"$")
	public void verify_email_error_message(String email_error) throws Throwable {
	    loginPage.emailErrormessage(email_error);
	   
	}

	@When("^verify password error message \"([^\"]*)\"$")
	public void verify_password_error_message(String pass_error) throws Throwable {
	   loginPage.passwordErrormessage(pass_error);
	  
	}
	@Then("^verify page title is \"([^\"]*)\"$")
	public void verify_page_title_is(String title) throws Throwable {
		
	 loginPage.verifyTitle(title);
	    
	}
      
	@When("^click on forgot Password$")
	public void click_on_forgot_Password() throws Throwable {
	    loginPage.forgotPassword();
	}

	@When("^click on submit$")
	public void click_on_submit() throws Throwable {
		loginPage.submit();
	   
	}

	
	@When("^click on settings$")
	public void click_on_settings() throws Throwable {
		 loginPage.clicksettings();
		 Thread.sleep(5000);
	}

	@When("^click on logout button$")
	public void click_on_logout_button() throws Throwable {
		loginPage.signout();
		 Thread.sleep(10000);
	}
	@Then("^close browser$")
	public void close_browser() throws Throwable {
	   driver.close();
	}
	
	@Then("^verify error message \"([^\"]*)\"$")
	public void verify_error_message(String actual_msg) throws Throwable {
	    loginPage.verifyErrormessage(actual_msg);
	}

	
	@When("^user clicks on sequence icon in left navigation bar$")
	public void user_clicks_on_sequence_icon_in_left_navigation_bar() throws Throwable {
		createsequence.clicksequenceicon();
		
	   
	}

	@When("^click on Create Sequence button$")
	public void click_on_Create_Sequence_button() throws Throwable {
	   createsequence.clickcreatesequence();
	  
	}

	@When("^click on Next button$")
	public void click_on_Next_button() throws Throwable {
	   createsequence.clickonnext();
	}

	@When("^Enter subject$")
	public void enter_subject() throws Throwable {
	   createsequence.entersubject("sdfdshfgdfgg");
	}

	@When("^Enter body$")
	public void enter_body() throws Throwable {
		//driver.switchTo().frame(driver.findElement(By.xpath("//*[@id=\"e8c5ba8b3-e01f-a681-7c55-0f460535aa62\"]/div[7]/div[1]/div[2]")));
	 createsequence.enterbody("enter email body");   
	}

	@When("^click on add button\\.$")
	public void click_on_add_button() throws Throwable {
	   createsequence.clickonadd();
	}
	@When("^click on sequence\\.$")
	public void click_on_sequence() throws Throwable {
		createsequence.clickOnSequence();
	}

	@When("^click on prospects tab\\.$")
	public void click_on_prospects_tab() throws Throwable {
	  createsequence.clickOnProspects();
	}

	@When("^click on add prospects LOV\\.$")
	public void click_on_add_prospects_LOV() throws Throwable {
	   createsequence.clickOnExpandAddProspect();
	}

	@When("^click on import prospect\\.$")
	public void click_on_import_prospect() throws Throwable {
	   createsequence.clickOnImportProspect();
	}

	@When("^click on choose a file\\.$")
	public void click_on_choose_a_file() throws Throwable {
        createsequence.uploadFile();
	}

	

	@When("^click on continue\\.$")
	public void click_on_continue() throws Throwable {
	   createsequence.clickOnContinue();
	}

	@When("^click on  continue in map fileds\\.$")
	public void click_on_continue_in_map_fileds() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^add tags$")
	public void add_tags() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^select timezone\\.$")
	public void select_timezone() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^click on continue and import to sequence\\.$")
	public void click_on_continue_and_import_to_sequence() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^Verify prospect were imported or not\\.$")
	public void verify_prospect_were_imported_or_not() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	

	
}
