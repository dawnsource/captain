package com.c306.core.quartz.jms.instance.lsnr;

import java.util.List;

import com.c306.core.quartz.SchedulerInfo;
import com.c306.core.quartz.SchedulerInstanceUtils;

public class SchedulerInstanceListReceiver {
	
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
	
	
	
}
