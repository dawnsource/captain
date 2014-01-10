package com.c306.core.quartz.jms;

public interface SchedulerClusteredConstants {
	
	/*
		#============================================================================
		# Configure QuartMonitor JMS 
		#============================================================================
		quartz.jms.connectionFactory.class: org.apache.activemq.jndi.ActiveMQInitialContextFactory
		quartz.jms.url: tcp://localhost:7222
		quartz.jms.username: admin
		quartz.jms.password: 
		# jndi names
		quartz.jms.connectionFactory.jndiName: GenericConnectionFactory
		quartz.jms.topic.instance.announcement: captain.quatz.instance.announcement
		quartz.jms.topic.instance.list: captain.quatz.instance.list
		quartz.jms.topic.instance.manage: captain.quatz.instance.manage

	 */
	// properties config name
	String PROP_JMS_CONNECTIONFACTORY_CLASS = "quartz.jms.connectionFactory.class";
	String PROP_JMS_URL = "quartz.jms.url";
	String PROP_JMS_USERNAME = "quartz.jms.username";
	String PROP_JMS_PASSWORD = "quartz.jms.password";
	String PROP_JMS_TOPIC_INSTANCE_ANNOUNCEMENT = "quartz.jms.topic.instance.announcement";
	String PROP_JMS_TOPIC_INSTANCE_LIST = "quartz.jms.topic.instance.list";
	String PROP_JMS_TOPIC_INSTANCE_MANAGE = "quartz.jms.topic.instance.manage";
	
	
	// constants
	String SCHE_INST_MANAGE_STANDBY = "standby";
	String SCHE_INST_MANAGE_RESUME = "resume";
	
	

}
