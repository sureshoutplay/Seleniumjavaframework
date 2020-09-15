package outplay.pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Createsequence {
	

public WebDriver driver;
public Createsequence(WebDriver rdriver) {
	this.driver=rdriver;
	PageFactory.initElements(rdriver, this);
}

@FindBy(xpath ="//*[@id=\"sequenceSideBarBtn\"]/a/i")  
@CacheLookup
WebElement sequenceicon;

@FindBy(xpath = "/html/body/app-root/app-body-layout/div/div[1]/app-page-content/div[1]/div/div/div/app-sequence-list/div[1]/div[1]/div[3]/button[1]")
@CacheLookup
WebElement createsequence;

@FindBy(xpath= "/html/body/app-root/app-body-layout/div/div[1]/app-page-content/div[1]/div/div/div/app-sequence-index/div/app-sequence-steps/div/div[2]/div/button")
@CacheLookup
WebElement addstep;

@FindBy(xpath = "//*[@id=\"nextBtn\"]")
@CacheLookup
WebElement clickonnext;

@FindBy(xpath="//div/input[@class='emailsubject']")
@CacheLookup
WebElement entersubject;

@FindBy(xpath="//div[@class='note-editing-area']/div[@class='note-editable card-block']")
@CacheLookup
WebElement enterbody;

@FindBy(xpath = "//*[@id=\"createEmailModal\"]/div/div/div[3]/div[1]/div[1]/button")
@CacheLookup
WebElement clickonadd;



@FindBy(xpath = "//div[contains(text(),'linkedin Sequence1')]")
@CacheLookup
WebElement sequence;

@FindBy(linkText = "Prospects")
@CacheLookup
WebElement prospectsTab;

@FindBy(xpath = "//div[@class='ml-auto']/div/button[2]")
@CacheLookup
WebElement expandAddProspect;


@FindBy(linkText = "Import Prospects")
@CacheLookup
WebElement importProspect;


@FindBy(id = "import-csv-file")
@CacheLookup
WebElement uploadfile;

@FindBy(xpath = "//button[contains(text(),'Continue')]")
@CacheLookup
WebElement continueButton;

 

public void clicksequenceicon() {
	sequenceicon.click();
	}
public void clickcreatesequence() {
	createsequence.click();
}
public void clickaddstep() {
	addstep.click();
}
public void clickonnext() {
	WebDriverWait wait = new WebDriverWait(driver,120);
	wait.until(ExpectedConditions.elementToBeClickable(clickonnext));
	clickonnext.click();
}

public void entersubject(String subject) {
	entersubject.clear();
    entersubject.sendKeys(subject);
    }
public void enterbody(String body) {
	enterbody.clear();
	enterbody.sendKeys(body);
}
public void clickonadd() {
	clickonadd.click();
}

public void clickOnSequence() {
	sequence.click();
}
public void clickOnProspects() {
	prospectsTab.click();
}

public void clickOnExpandAddProspect() {
	expandAddProspect.click();
}
public void clickOnImportProspect() {
	importProspect.click();
}

public void uploadFile() {
	uploadfile.sendKeys("C:\\Users\\AppVirality\\Desktop\\samplecontacts.csv");
}

public void clickOnContinue() {
	continueButton.click();
}



}
