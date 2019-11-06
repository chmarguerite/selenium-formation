package fr.dawan.formation.selenium.demo;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ExerciceAdvantage {
	WebDriver driver;
	JSWaiter wait;

	@Before
	public void setup()  {
	    System.setProperty("webdriver.chrome.driver","drivers/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get("http://advantageonlineshopping.com/");
        
        
	}
	
	
	@Test
	public void enregistrerCompte() throws MalformedURLException, InterruptedException {
       driver.findElement(By.id("menuUser")).click();
       driver.findElement(By.linkText("CREATE NEW ACCOUNT")).click();
       driver.findElement(By.name("usernameRegisterPage")).sendKeys("user9");
       driver.findElement(By.name("emailRegisterPage")).sendKeys("user@test.fr");
       driver.findElement(By.name("passwordRegisterPage")).sendKeys("Selenium2018");
       driver.findElement(By.name("confirm_passwordRegisterPage")).sendKeys("Selenium2018");
       assertFalse(driver.findElement(By.id("register_btnundefined")).isEnabled());
       driver.findElement(By.name("i_agree")).click();
       assertTrue(driver.findElement(By.id("register_btnundefined")).isEnabled());
 
        
	}
	
	

	@After
	public void tearDown() {
	driver.quit();
	}
	
	
}
