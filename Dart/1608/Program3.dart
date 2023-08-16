

void main() {
	
	String name1 = "Saurabh";
	String name2 = 'Makrand';
	print(name1);
	print(name2);

	bool flag = true;
	print(flag);
	
	// var is generic datatype it can hold all values.
	var x = 10;
	var y = 20.5;
	var name3 = 'Vedika';
	var temp = false;


	print(x);
	print(y);
	print(name3);
	print(temp);
	name3 = "Aditi";
	print(name3);

	// but once we assigned data to 'var' it allows only that type of data afterwords .
	//x = 'tanmay'; 	// -->> here we are asigning a String to x but x has integer value so it will throw an error.
				// -->> Error : a value of type 'String' can't be assign to variable of type 'int'.
}	
