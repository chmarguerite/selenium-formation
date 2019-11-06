package fr.dawan.formation.selenium.demo;

import java.util.concurrent.TimeUnit;

import org.junit.Ignore;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ExerciceB {
	
	 
	 @Test
	    public void orange_ajouter_salarié() throws InterruptedException {
	        System.setProperty("webdriver.chrome.driver","drivers/chromedriver.exe");
	        ChromeDriver driver = new ChromeDriver();
	        driver.manage().window().maximize();
	        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	        driver.get("http://orangehrm.selenium-formation.org");
	        driver.findElement(By.id("txtUsername")).clear();
	        driver.findElement(By.id("txtUsername")).sendKeys("admin");
	        driver.findElement(By.id("txtPassword")).clear();
	        driver.findElement(By.id("txtPassword")).sendKeys("Selenium&2018");
	        driver.findElement(By.id("btnLogin")).click();
	        driver.findElement(By.xpath("//a[@id='menu_pim_viewPimModule']/b")).click();
	        driver.findElement(By.id("btnAdd")).click();
	        driver.findElement(By.id("firstName")).clear();
	        driver.findElement(By.id("firstName")).sendKeys("toto");
	        driver.findElement(By.id("lastName")).clear();
	        driver.findElement(By.id("lastName")).sendKeys("SMITH");
	        String idSalarié = driver.findElement(By.id("employeeId")).getAttribute("value");
	        driver.findElement(By.id("btnSave")).click();
	        driver.findElement(By.id("btnSave")).click();
	        driver.findElement(By.id("personal_optGender_1")).click();
	        new Select(driver.findElement(By.id("personal_cmbNation"))).selectByVisibleText("Bangladais");
	        new Select(driver.findElement(By.id("personal_cmbMarital"))).selectByVisibleText("Célibataire");
	        driver.findElement(By.id("btnSave")).click();
	        driver.findElement(By.xpath("//a[@id='menu_pim_viewPimModule']/b")).click();
	        driver.findElement(By.id("menu_pim_viewEmployeeList")).click();
	        driver.findElement(By.id("empsearch_id")).clear();
	        driver.findElement(By.id("empsearch_id")).sendKeys(idSalarié);
	        driver.findElement(By.id("searchBtn")).click();
	        driver.findElement(By.linkText(idSalarié)).click();
	        driver.findElement(By.id("welcome")).click();
	        driver.findElement(By.linkText("Déconnexion")).click();
	        driver.close();
	        driver.quit();

	    }

}
