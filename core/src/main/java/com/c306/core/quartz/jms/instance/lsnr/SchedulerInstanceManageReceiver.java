package com.c306.core.quartz.jms.instance.lsnr;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.c306.core.quartz.SchedulerInstanceUtils;
import com.c306.core.quartz.jms.instance.producer.SchedulerInstanceJmsManager;


public class SchedulerInstanceManageReceiver implements MessageListener {
	
	protected static Logger logger = Logger.getLogger(SchedulerInstanceManageReceiver.class);

	/**
	 * clustered environment instances manage
	 */
	@Autowired(required=false)
	private SchedulerInstanceJmsManager clusteredInstanceManager;

	/**
	 * 
	 * @param message
	 */
	public void handleMessage(String message) {
		
		logger.warn(message + " ... ");
		
		String[] strs = message.split(";");
		if( strs.length == 2 ) {
			if( "standby".equals(strs[0]) ) {
				// standby
				SchedulerInstanceUtils.pauseInstance(strs[1]);
			} else {
				// resume
				SchedulerInstanceUtils.resumeInstance(strs[1]);
			}
			// rescan instances
			this.clusteredInstanceManager.announce();
			logger.warn(message + " ... complete.");
		}
		
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
