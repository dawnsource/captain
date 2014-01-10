package com.c306.core.quartz.jms;

import javax.servlet.ServletContext;

import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.spi.ClassLoadHelper;
import org.quartz.spi.SchedulerPlugin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;

import com.c306.core.CoreConstants;
import com.c306.core.quartz.jms.instance.producer.SchedulerInstanceJmsManager;

public class JmsManageInstancePlugin implements SchedulerPlugin {
	
    private final Logger log = LoggerFactory.getLogger(getClass());
    
    private Scheduler scheduler;

	@Override
	public void initialize(String name, Scheduler scheduler,
			ClassLoadHelper loadHelper) throws SchedulerException {
		// TODO Auto-generated method stub
		log.info("initialize ... ");
		this.scheduler = scheduler;
	}

	@Override
	public void start() {
		// TODO Auto-generated method stub
        try {
			ApplicationContext appCtx = (ApplicationContext) ((ServletContext)scheduler.getContext().get(CoreConstants.QUARTZ_CONTEXT_SERVLET_CONTEXT_KEY))
			.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
			SchedulerInstanceJmsManager manager = appCtx.getBean(SchedulerInstanceJmsManager.class);
			manager.announce();
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("SchedulerInstanceJmsManager announce complete. ");
	}

	@Override
	public void shutdown() {
		// TODO Auto-generated method stub
		
	}

}
