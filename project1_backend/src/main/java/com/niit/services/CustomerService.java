package com.niit.services;

import com.niit.product.Customer;
import com.niit.product.User;

public interface CustomerService {
void registerCustomer(Customer customer);
boolean isEmailValid(String email);
boolean isUsernameValid(String username);
User getUser(String username);
}