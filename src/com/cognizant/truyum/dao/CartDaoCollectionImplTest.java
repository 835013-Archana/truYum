package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {
    static CartDao cartDao = new CartDaoCollectionImpl();

    public static void main(String[] args) {
        testAddCartItem();
        testgetAllCArtItems();
        testRemoveCartItem();
        testgetAllCArtItems();

    }

    public static void testAddCartItem() {
        System.out.println("Product added into Cart");
        cartDao.addcartItem(1, 2);
        cartDao.addcartItem(1, 3);
    }

    public static void testgetAllCArtItems() {
        try {
            System.out.println("Retrieving all the items from cart");
            List<MenuItem> list = cartDao.getAllCartItems(1).getMenuItemList();
            for (MenuItem menuItem : list) {
                System.out.println(menuItem);
            }

            System.out.println("Total Price:" + cartDao.getAllCartItems(1).getTotal());
        } catch (CartEmptyException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void testRemoveCartItem() {
        System.out.println("Remove Cart");
        cartDao.removeCartItem(1, 3);
    }
}
