package com.niit.dao;

import com.niit.product.Cart;
import com.niit.product.Customer;
import com.niit.product.CustomerOrder;
import com.niit.product.User;

public interface CustomerDao {
void registerCustomer(Customer customer);
boolean isEmailValid(String email);
boolean isUsernameValid(String username);
User getUser(String username);

}