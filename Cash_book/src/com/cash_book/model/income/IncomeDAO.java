package com.cash_book.model.income;

import java.util.ArrayList;
import java.util.List;

import com.cash_book.model.AbstractDAO;

public class IncomeDAO extends AbstractDAO {
	@Override
	public List<String> select(String sql) {
		
		return new ArrayList<String>();
	}
	
	
// INSERT
	@Override
	public boolean insert(String sql) {
		
		return true;
	}
	
	
// DELETE
	@Override
	public boolean delete(String sql) {
		
		return true;
	}
}