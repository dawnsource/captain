package com.c306.core.quartz.jms.instance.lsnr;

import java.util.HashMap;
import java.util.Map;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.c306.core.quartz.SchedulerInstanceUtils;
import com.c306.core.quartz.jms.instance.producer.SchedulerInstanceJmsManager;

public class SchedulerInstanceAnnouncementReceiver implements MessageListener {

    private final Logger log = LoggerFactory.getLogger(getClass());

	/**
	 * clustered environment instances manage
	 */
	@Autowired(required=false)
	private SchedulerInstanceJmsManager clusteredInstanceManager;

	/**
	 * 
	 * @param message
	 */
	@SuppressWarnings("rawtypes")
	public Map handleMessage(String message) {

		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			Long version = Long.valueOf(message);
			log.info("Announcement processed ... timestamp: " + message);
			
//			map.put("Version", version);
////			map.put("SchedulerInstances", "1234567890");
//			map.put("SchedulerInstances", SchedulerInstanceUtils.localInstanceList().get(0));
			
			clusteredInstanceManager.register(version);
			log.info("Announcement processed complete.");
			
			return null;
		} catch (Exception e) {
			log.error("Announcement processed error.", e);
		}
		return null;
	}

	@Override
	public void onMessage(Message message) {
		try {
			handleMessage(((TextMessage)message).getText());
		} catch (JMSException e) {
			e.printStackTrace();
		}
	}
	
	
}
