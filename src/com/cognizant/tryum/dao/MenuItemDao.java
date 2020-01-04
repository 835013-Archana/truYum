package com.cognizant.tryum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public interface MenuItemDao {
    public List<MenuItem> getMenuItemListAdmin();

    public List<MenuItem> getMenuItemListCustomer();

    public void modifyItem(MenuItem menuitem);

    public MenuItem getMenuItem(long menuItemId);

}
