package com.niit.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.OrderDetail;

@Repository("orderDAO")
@Transactional
public class OrderDAOImplementation implements OrderDAO
{
	@Autowired
	SessionFactory sessionfactory;

	@Override
	public boolean insertOrderDetail(OrderDetail orderDetail) 
	{
		try{
			sessionfactory.getCurrentSession().delete(orderDetail);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
	
}
