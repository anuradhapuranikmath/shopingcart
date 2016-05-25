package com.musichub.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.musichub.model.ProductDetails;


public class ProductValidation implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		
		return ProductDetails.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		
		ProductDetails inf=(ProductDetails)arg0;
	}

	
	
}
