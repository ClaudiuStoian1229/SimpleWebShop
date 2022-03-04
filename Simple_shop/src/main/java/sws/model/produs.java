package sws.model;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class produs {
private String name;
private String category;
private String price;



public produs() {

}



public produs (String name, String category, String price) {
	this.name = name;
	this.category = category;
	this.price = price;
}



public String getName() {
	return name;
}



public void setName(String name) {
	this.name = name;
}



public String getCategory() {
	return category;
}



public void setCategory(String category) {
	this.category = category;
}



public String getPrice() {
	return price;
}



public void setPrice(String price) {
	this.price = price;
}



@Override
public String toString() {
	return "produs [name=" + name + ", category=" + category + ", price=" + price + "]";
}



}
