package com.c306.core.quartz.jms.instance.lsnr;

import java.util.List;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.ObjectMessage;

import com.c306.core.quartz.SchedulerInfo;
import com.c306.core.quartz.SchedulerInstanceUtils;

public class SchedulerInstanceListReceiver implements MessageListener {
	
	/**
	 * 
	 * @param message
	 */
	@SuppressWarnings("unchecked")
	public void handleMessage(Object[] message) {
		
//		Long version = (Long) message.get("Version");
//		List<SchedulerInfo> insts = (List<SchedulerInfo>) message.get("SchedulerInstances");
		
		Long version = (Long) message[0];
		List<SchedulerInfo> insts = (List<SchedulerInfo>) message[1];
		
		if( version != null && insts != null )
			SchedulerInstanceUtils.add(version, insts);
		
		
	}

	@Override
	public void onMessage(Message message) {
		try {
			handleMessage((Object[]) ((ObjectMessage)message).getObject());
		} catch (JMSException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}
