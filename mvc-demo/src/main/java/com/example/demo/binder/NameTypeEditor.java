package com.example.demo.binder;

import java.beans.PropertyEditorSupport;

public class NameTypeEditor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		if(text == null) {
			setValue(null);
		}
		else {
			String value = text.toUpperCase();
			setValue(value);
		}
	}
	
	
	
	

}
