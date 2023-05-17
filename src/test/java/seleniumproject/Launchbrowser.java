package seleniumproject;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Launchbrowser {

	
	
	public static void main(String[] args) throws InterruptedException {
		System.setProperty("webdriver.chrome.driver","C:\\SeleniumAll\\chromedriver\\chromedriver_win32\\chromedriver.exe");
		WebDriver driver =  new ChromeDriver(); 
		System.out.println("Launched browser Successfully");
		driver.get("http://localhost:8086/DaynamicWedProject0/index.jsp");
		
		
		
		
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		
		Thread.sleep(3000);
		WebElement username1 = driver.findElement(By.xpath("//input[@name='name']"));
		username1.sendKeys("Admin");
		
		Thread.sleep(3000);
		WebElement password1 = driver.findElement(By.xpath("//input[@name='password']"));
		password1.sendKeys("Admin123");
		
		Thread.sleep(3000);
		driver.findElement(By.xpath("//input[@value='Login']")).click();  
	
		
	}

	
	
	
	
	
	
	
	
	
	
	
}
