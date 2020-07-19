package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.CartItem;

@Repository("cartDAO")
@Transactional
public class CartDAOImplementation implements CartDAO
{

	@Autowired
	SessionFactory sessionfactory;

	public boolean addCartItem(CartItem cartItem) {
		try{
			sessionfactory.getCurrentSession().save(cartItem);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}

	public boolean deleteCartItem(CartItem cartItem) {
		try{
			sessionfactory.getCurrentSession().delete(cartItem);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}

	public boolean updateCartItem(CartItem cartItem) {
		try{
			sessionfactory.getCurrentSession().update(cartItem);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}

	public List<CartItem> listCartItem(String username) {
		Session session = sessionfactory.openSession();
		Query query = session.createQuery("from CartItem where username=:uname and pstatus='NP'");
		query.setParameter("uname", username);
		List<CartItem> listCartItem = query.list();
		return listCartItem;
	}

	public CartItem getCartItem(int cartItemId) {
		Session session = sessionfactory.openSession();
		CartItem cartItem = session.get(CartItem.class,cartItemId);
		session.close();
		return cartItem;
	}
	
	
}
