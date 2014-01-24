package com.c306.core.quartz.jms;

import javax.jms.Destination;

import org.apache.commons.beanutils.MethodUtils;
import org.springframework.jms.JmsException;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessagePostProcessor;

public class JmsTemplateForAMQ59 extends JmsTemplate {

	@Override
	public void convertAndSend(String destinationName, Object message)
			throws JmsException {
		// TODO Auto-generated method stub
		super.convertAndSend(createDestination(destinationName), message);
	}

	@Override
	public void convertAndSend(String destinationName, Object message,
			MessagePostProcessor postProcessor) throws JmsException {
		// TODO Auto-generated method stub
		super.convertAndSend(createDestination(destinationName), message, postProcessor);
	}
	
	public Destination createDestination(String destinationName) {
		String destClass = null;

        Destination dest = null;
//        if( destinationName.startsWith("topic://") ) {
        if( this.isPubSubDomain() ) {
//            dest = new ActiveMQTopic(destinationName.substring("topic://".length()));
        	destClass = "org.apache.activemq.command.ActiveMQTopic";
        } else {
//            dest = new ActiveMQQueue(destinationName.substring("queue://".length()));
        	destClass = "org.apache.activemq.command.ActiveMQQueue";
        }
        
		try {
			Object ins = Class.forName(destClass).newInstance();
//			FieldUtils.writeDeclaredField(ins, "physicalName", destinationName);
			MethodUtils.invokeMethod(ins, "setPhysicalName", destinationName);
			
			dest = (Destination) ins;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
        return dest;
	}

}
