package com.niit.services;

import java.util.List;

import com.niit.product.Category;
import com.niit.product.Product;

public interface ProductService {
List<Product> getAllProducts();
Product getProduct(int id);
void deleteProduct(int id);
List<Category> getAllCategories();
void saveOrUpdateProduct(Product product);
}