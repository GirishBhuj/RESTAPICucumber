package stepDefinitions;

import java.io.IOException;
import org.apache.logging.log4j.*;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {

	@Before()
	public void beforeScenario() throws IOException
	{	

		System.setProperty("log4j.configurationFile","log4j2.xml");
		System.out.println("Inside Hooks/Before method");
	}
	
	@After()
	public void AfterScenario() throws IOException
	{	

		System.out.println("Inside Hooks/After method. now what to do");
	}
}
