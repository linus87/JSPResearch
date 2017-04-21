package com.linus.listener;

import java.text.DateFormat;
import java.util.Date;
import java.util.logging.Logger;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class GlobalHttpSessionListener
 *
 */
@WebListener
public class GlobalHttpSessionListener implements HttpSessionListener, HttpSessionAttributeListener {
	private static final Logger logger = Logger.getLogger(GlobalHttpSessionListener.class.getName());

    /**
     * Default constructor. 
     */
    public GlobalHttpSessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent event) {
        // TODO Auto-generated method stub
    	HttpSession session = event.getSession(); 
    	Date date = new Date(session.getLastAccessedTime());
    	logger.warning("session: " + session.getId() + " is last visited at " + DateFormat.getTimeInstance().format(date));
    	logger.warning("A session: " + session.getId() + " is destroyed at " + DateFormat.getTimeInstance().format(new Date()));
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent event) {
        // TODO Auto-generated method stub
    	HttpSession session = event.getSession(); 
    	Date date = new Date(session.getCreationTime());
    	logger.warning("A new session: " + session.getId() + " is created at " + DateFormat.getTimeInstance().format(date));
    	logger.warning("Session: " + session.getId() + " will be passivated in " + session.getMaxInactiveInterval());
    	
    	session.setAttribute("demoAttribute", "This is a demo attribute");
    }

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		logger.warning("A new attribute is added: " + event.getName() + " - " + event.getValue());
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		logger.warning("Attribute " + event.getName() + " is removed");
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		logger.warning("Attribute " + event.getName() + " is replaced with value [" + event.getValue() + "]");
	}
	
}
