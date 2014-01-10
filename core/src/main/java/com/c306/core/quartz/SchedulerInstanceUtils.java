package com.c306.core.quartz;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.core.QuartzScheduler;
import org.quartz.core.QuartzSchedulerResources;
import org.quartz.impl.SchedulerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.c306.utils.BeanPropertyAccessUtils;

/**
 * Monitor Scheduler instances in cluster environment.
 * 
 * @author cs
 *
 */
public abstract class SchedulerInstanceUtils {
	
    private static final Logger logger = LoggerFactory.getLogger(SchedulerInstanceUtils.class);
	
	private static long version = 0l; // 
	private static List<SchedulerInfo> insList = new ArrayList<SchedulerInfo>(5);//Vector
	
	/**
	 * 返回集群环境下，所有实例
	 * @return
	 */
	public static List<SchedulerInfo> allClusteredInstanceList() {
		ArrayList<SchedulerInfo> schedulerList = new ArrayList<SchedulerInfo>(Arrays.asList(new SchedulerInfo[insList.size()]));
		synchronized (insList) {
			Collections.copy(schedulerList, insList);// copy() method use listIterator, will be fast-fail. so add the keyword "synchronized" at there.
		}
		return schedulerList;
	}
	
	public static void add(long version, List<SchedulerInfo> insts) {
		synchronized (insList) {
			if( version < SchedulerInstanceUtils.version ) {
				return;
			}
			if( version > SchedulerInstanceUtils.version ) {
				SchedulerInstanceUtils.version = version;
				insList.clear();
			}
			insList.addAll(insts);
		}
		logger.info("add success. instance list size: " + insList.size());
	}
	

	public static void pauseInstance(String keys) {
		
		try {

			logger.warn("pauseInstance keys: " + keys);
			for( String key : keys.split(",") ) {
//				Scheduler scheduler = this.getSchedulerFactory().getScheduler(key);
				Scheduler scheduler = lookupScheduler(key);
				if ( scheduler != null && scheduler.getSchedulerInstanceId().equals(key) ) {
					logger.warn("current scheduler instance isInStandbyMode? " + scheduler.isInStandbyMode() + ", isStarted? " + scheduler.isStarted() + ",  isShutdown? " + scheduler.isShutdown());
					scheduler.standby();
				} else {
					logger.warn("pauseInstance key not found: " + key);
					return;
				}
				logger.warn("standby scheduler: " + scheduler.getSchedulerName() + scheduler.getSchedulerInstanceId());
			}

			logger.warn("pauseInstance keys complete. ");
			
		} catch (Exception e) {
			logger.error("", e);
		}
		
	}
	
	public static void resumeInstance(String keys) {
		
		try {

			logger.warn("resumeInstance keys: " + keys);
			for( String key : keys.split(",") ) {
//				Scheduler scheduler = this.getSchedulerFactory().getScheduler(key);
				Scheduler scheduler = lookupScheduler(key);
				if ( scheduler != null && scheduler.getSchedulerInstanceId().equals(key) ) {
					logger.warn("current scheduler instance isInStandbyMode? " + scheduler.isInStandbyMode() + ", isStarted? " + scheduler.isStarted() + ",  isShutdown? " + scheduler.isShutdown());
					scheduler.start();
				} else {
					logger.warn("resumeInstance key not found: " + key);
					return;
				}
				logger.warn("restart scheduler: " + scheduler.getSchedulerName() + scheduler.getSchedulerInstanceId());
			}

			logger.warn("resumeInstance keys complete. ");
			
		} catch (Exception e) {
			logger.error("", e);
		}
		
	}
	
	/**
	 * 非集群环境下，所有实例
	 * @return
	 * @throws Exception
	 */
	public static Scheduler lookupScheduler(String instanceid) {
		try {
			Collection<Scheduler> insList = SchedulerRepository.getInstance().lookupAll();
			for(Scheduler scheduler: insList) {
				if( scheduler.getSchedulerInstanceId().equals(instanceid) )
					return scheduler;
			}
		} catch (Exception e) {
			logger.error("", e);
		}
		return null;
	}
	
	/**
	 * 非集群环境下，所有实例
	 * @return
	 * @throws Exception
	 */
	public static List<SchedulerInfo> localInstanceList() throws Exception {

		ArrayList<SchedulerInfo> schedulerList = new ArrayList<SchedulerInfo>();
		
		try {
			Collection<Scheduler> insList = SchedulerRepository.getInstance().lookupAll();
			for(Scheduler scheduler: insList) {
				QuartzSchedulerResources qsres = getQuartzSchedulerResources(scheduler);
				SchedulerInfo schedulerInfo = new SchedulerInfo();
				schedulerInfo.setSchedulerName(qsres.getName());
				schedulerInfo.setSchedulerInstanceId(qsres.getInstanceId());
				schedulerInfo.setJobStoreClassName(qsres.getJobStore().getClass().getName());
//			if( qsres.getJobStore() instanceof org.quartz.simpl.SimpleInstanceIdGenerator )
				schedulerInfo.setNode(qsres.getInstanceId());
				schedulerInfo.setStandbyMode(scheduler.isInStandbyMode());
				schedulerInfo.setStarted(scheduler.isStarted());
				schedulerInfo.setThreadPoolClassName(qsres.getThreadPool().getClass().getName());
				schedulerInfo.setThreadPoolSize(qsres.getThreadPool().getPoolSize());
//			schedulerInfo.setType(type);
				String version = String.format("%s.%s.%s", QuartzScheduler.getVersionMajor(), QuartzScheduler.getVersionMinor(),
			            QuartzScheduler.getVersionIteration());
				schedulerInfo.setVersion(version);

				logger.info(schedulerInfo.toString());
				schedulerList.add(schedulerInfo);
			}
		} catch (Exception e) {
			throw e;
		}
		logger.info("schedulerList size: " + schedulerList.size());
		return schedulerList;
	}

	
	private static QuartzSchedulerResources getQuartzSchedulerResources(Scheduler scheduler) throws SchedulerException, IllegalAccessException, NoSuchFieldException {
		QuartzScheduler qs = (QuartzScheduler) BeanPropertyAccessUtils.getDeclaredProperty(scheduler, "sched");
		QuartzSchedulerResources resources = (QuartzSchedulerResources) BeanPropertyAccessUtils.getDeclaredProperty(qs, "resources");
		return resources;
	}
	
}
