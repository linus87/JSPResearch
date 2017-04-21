package com.linus.listener;

import java.util.logging.LogManager;
import java.util.logging.Logger;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletRequestListener
 *
 */
@WebListener
public class DefaultServletRequestListener implements javax.servlet.ServletRequestListener, javax.servlet.ServletRequestAttributeListener {
	private final static Logger log = Logger.getLogger(DefaultServletRequestListener.class.getName());

    /**
     * Default constructor. 
     */
    public DefaultServletRequestListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent event) {
        // TODO Auto-generated method stub
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    public void requestInitialized(ServletRequestEvent event) {
        // TODO Auto-generated method stub
    	
    }

	@Override
	public void attributeAdded(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	
}
