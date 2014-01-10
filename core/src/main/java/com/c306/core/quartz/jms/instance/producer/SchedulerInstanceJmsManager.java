package com.c306.core.quartz.jms.instance.producer;

import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;

import com.c306.core.quartz.SchedulerInstanceUtils;
import com.c306.core.quartz.jms.SchedulerClusteredConstants;

/**
 * 基于jms的集群，instance管理
 * @author cs
 *
 */
public class SchedulerInstanceJmsManager {
    private final Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private JmsTemplate quartzJmsTemplateForTopic;
	@Autowired
	private Properties quartzJmsClusteredProperties;
	
	
	public void announce() {
		String destinationName = this.quartzJmsClusteredProperties.getProperty(SchedulerClusteredConstants.PROP_JMS_TOPIC_INSTANCE_ANNOUNCEMENT);
		// message is a Version
		log.info("send announcement...");
		this.quartzJmsTemplateForTopic.convertAndSend(destinationName, String.valueOf(System.currentTimeMillis()));
	}
	
	public void register(Long timestamp) throws Exception {
		String destinationName = this.quartzJmsClusteredProperties.getProperty(SchedulerClusteredConstants.PROP_JMS_TOPIC_INSTANCE_LIST);
		// message 
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("Version", timestamp);
//		map.put("SchedulerInstances", SchedulerInstanceUtils.localInstanceList());
//		this.quartzJmsTemplateForTopic.convertAndSend(destinationName, map); // 使用map对象报错
		// 使用map对象报错, 改为Object[]
		log.info("register ... " + timestamp);
		this.quartzJmsTemplateForTopic.convertAndSend(destinationName, new Object[]{timestamp, SchedulerInstanceUtils.localInstanceList()});
	}
	
	public void standby(String instanceId) {
		
		String destinationName = this.quartzJmsClusteredProperties.getProperty(SchedulerClusteredConstants.PROP_JMS_TOPIC_INSTANCE_MANAGE);
		// message
		log.info("standby " + instanceId);
		this.quartzJmsTemplateForTopic.convertAndSend(destinationName, SchedulerClusteredConstants.SCHE_INST_MANAGE_STANDBY + ";" + instanceId);
	}
	
	public void resume(String instanceId) {
		String destinationName = this.quartzJmsClusteredProperties.getProperty(SchedulerClusteredConstants.PROP_JMS_TOPIC_INSTANCE_MANAGE);
		// message
		log.info("resume " + instanceId);
		this.quartzJmsTemplateForTopic.convertAndSend(destinationName, SchedulerClusteredConstants.SCHE_INST_MANAGE_RESUME + ";" + instanceId);
	}

}
