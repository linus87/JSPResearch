package com.linus.util;

import java.lang.reflect.Field;

import com.linus.annotations.Editable;

public class AnnotationUtil {
	public static boolean isEditable(String className, String fieldName) {
		try {
			Field field = Class.forName(className).getField(fieldName);
			Editable e = field.getAnnotation(Editable.class);
			
			return e.value();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return true;
	}
}
