
// we can write main as following without giving return type.
main() {
	
	int x = 10;
	int y;
	
	print(x);
	
	//print(y); 	//-->> Error : non nullable variable y must be assigned before used.
	y = 20;
	print(y);

	num a = 30;
	num b = 40.5;
	
	// num can store both int and double values
	print(a);
	print(b);
	
	double c = 50;
	//x = a;	// -->> x is int type and we are assigning it a value of double so it will throw an error cause there is chances of loosing data.
			// -->> Error : a value of type 'double' can't be assigned to variable of type 'int'.
	print(c);

	print(x.runtimeType);
	print(y.runtimeType);
	print(a.runtimeType);
	print(b.runtimeType);
	print(c.runtimeType);	//-->> runtimeType is used for checking the datatype of a variable.

}
