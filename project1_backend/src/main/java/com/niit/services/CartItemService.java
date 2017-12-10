package com.niit.services;

import com.niit.product.Cart;
import com.niit.product.CartItem;
import com.niit.product.CustomerOrder;

public interface CartItemService {
	void saveOrUpdateCartItem(CartItem cartItem);

	void removeCartItem(int cartItemId);

	Cart getCart(int cartId);

	CustomerOrder createOrder(Cart cart);
}