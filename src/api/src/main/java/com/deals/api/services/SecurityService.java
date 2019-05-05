package com.deals.api.services;

public interface SecurityService {

	String createToken(String subject, long ttlMillis);
	
	String validate(String token);	
}
