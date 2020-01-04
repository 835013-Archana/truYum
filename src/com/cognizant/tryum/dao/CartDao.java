package com.cognizant.tryum.dao;

import com.cognizant.truyum.model.Cart;

public interface CartDao {
public void addcartItem(long userId,long menuItemId);
public Cart getAllCartItems(long userId)throws CartEmptyException;
public void removeCartItem(long userId,long menuItemId);
}