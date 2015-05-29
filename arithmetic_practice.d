import std.stdio;

void main(){

	int x, y, z;
	
	writeln("Enter your first number: ");
	readf(" %s", &x);
	
	writeln("Enter your second number: ");
	readf(" %s", &y);
	
	z = x/y;
	
	if(x%y)
		writeln(x," = ", y, " * ", z, " + " , x%y);
	else
		writeln(x," = ", y, " * ", z);
//-----------------------------------------------------
	write("[");
	x = 1;
	do{

		write(x);
		x++;
		if(x != 11)
			write(" ");

	}while(x != 11);
	writeln("]");

}