package com.c306.jms.activemq.springjms;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.jms.Connection;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageConsumer;
import javax.jms.Session;

import org.apache.activemq.command.ActiveMQTopic;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jms.connection.CachingConnectionFactory;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.listener.DefaultMessageListenerContainer;
import org.springframework.jms.support.destination.DestinationResolutionException;
import org.springframework.jms.support.destination.JndiDestinationResolver;

public class JmsContainerTest {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub

		test();
		
		
	}

	public static void test() throws JMSException, InterruptedException {
		// TODO Auto-generated method stub

		ApplicationContext ctx = new ClassPathXmlApplicationContext("com/c306/jms/activemq/springjms/quartz-ctx.xml");
		
		
		CachingConnectionFactory cf = ctx.getBean(CachingConnectionFactory.class);
		Connection conn = cf.createConnection();
		Session session = conn.createSession(false, Session.AUTO_ACKNOWLEDGE);
		
		String destinationName = "captain.quatz.instance.announcement";
		
		JndiDestinationResolver resolver = ctx.getBean(JndiDestinationResolver.class);
		
		int i = 0;
		do {
			
			try {
				Destination dest = resolver.resolveDestinationName(session, destinationName, true);
				
				System.out.println(dest);
			} catch (DestinationResolutionException e) {
				System.err.println("=============================================");
				e.printStackTrace();
				System.err.println(e.getMessage());
				System.err.println("=============================================");
				
				if( i > 0 )
					break;

				i ++;
				System.err.println("********************** create Topic " + destinationName);
				try {
//					Note that this method is not for creating the physical topic. The physical creation of topics is an administrative task and is not to be initiated by the JMS API. The one exception is the creation of temporary topics, which is accomplished with the createTemporaryTopic method.
					session.createTopic(destinationName);
					session.createTopic(destinationName + ".hello_" + System.currentTimeMillis());
					System.err.println("********************** create Topic " + destinationName + " successfully!!!!!!!!!!!!!!!!!!!!!");
				} catch (JMSException e1) {
					System.err.println("********************** create Topic Error....................");
//					e1.printStackTrace();
					System.err.println(e1.getMessage());
				}
			}
			
			Thread.sleep(100l);
			
		} while( true );

		Thread.sleep(100l);
		

		
		// send message
		try {
			System.out.println("send message ...");
			JmsTemplate quartzJmsTemplateForTopic = ctx.getBean("quartzJmsTemplateForTopic", JmsTemplate.class);
			quartzJmsTemplateForTopic.convertAndSend(destinationName, "hahahahahaha......");
		} catch (Exception e) {
			System.err.println("send message Exception:");
			System.err.println(e.getMessage());
			//

			System.out.println("send message again ...");
			JmsTemplate quartzJmsTemplateForTopic = ctx.getBean("quartzJmsTemplateForTopic", JmsTemplate.class);
			quartzJmsTemplateForTopic.convertAndSend(new ActiveMQTopic(destinationName), "hahahahahaha......");
			
			quartzJmsTemplateForTopic.setReceiveTimeout(1l);
			Message msg = quartzJmsTemplateForTopic.receive(new ActiveMQTopic(destinationName));
			System.out.println(msg);
			System.out.println("/////////////////////////////");
		}
		Thread.sleep(100l);
		
		

		System.out.println("receive message ...");
		// receive message
		////////////////////////////////////
		////////////////////////////////////
		////////////////////////////////////
		Destination dest = new ActiveMQTopic(destinationName);
		MessageConsumer consumer = session.createConsumer(dest);
		Message msg = consumer.receive(1000l);
		System.out.println(msg);
		////////////////////////////////////
		////////////////////////////////////
		////////////////////////////////////
		
//		DefaultMessageListenerContainer container = new DefaultMessageListenerContainer();
//		container.setDestination(destination);
		

		try {
			// Run until enter is pressed
			BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
			System.out.println("TBorrower application started");
			System.out.println("Press enter to quit application");
			stdin.readLine();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}

	}

}
