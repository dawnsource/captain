package com.c306.jms.activemq.springjms;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.jms.Message;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.util.FileSystemUtils;

public class SchedulerInstanceAnnouncementReceiver implements javax.jms.MessageListener {

    private final Logger log = LoggerFactory.getLogger(getClass());
    
    
    /**
     * Get a copy of the application context
     */
    @Autowired
    ConfigurableApplicationContext context;


	/**
	 * 
	 * @param message
	 */
	@SuppressWarnings("rawtypes")
	public void onMessage(Message message) {

		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			Long version = Long.valueOf(message.toString());
			log.info("Announcement processed ... timestamp: " + message);
			
//			map.put("Version", version);
////			map.put("SchedulerInstances", "1234567890");
//			map.put("SchedulerInstances", SchedulerInstanceUtils.localInstanceList().get(0));
			
			log.info("Announcement processed complete.");
			
			context.close();
	        FileSystemUtils.deleteRecursively(new File("activemq-data"));

			
		} catch (Exception e) {
			log.error("Announcement processed error.", e);
		}
	}

	
	
}
