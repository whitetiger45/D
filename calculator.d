import std.stdio;
import std.getopt;
import std.process;

void main(string[] args){

	float x, y, z;
	char op;
	enum ops: char { plus = '+', minus = '-', times = '*' , dividedby = '/' };

	if(args.length > 1)
	{
		getopt(args, 
			"x", &x,
			"op", &op,
			"y", &y);
	}

	else{
		write("Enter your first number: ");
		readf(" %s", &x);
		
		write("Enter your operation (+, -, *, /): ");
		
		readf(" %s", &op);
		write("Enter your second number: ");
		readf(" %s", &y);
	}

	switch(op){
		case '+':
				z = x + y;
				writeln(x ," ", ops.plus , " ", y, " = ", z);
				break;

		case '-':
				z = x - y;
				writeln(x ," ", ops.minus , " ", y, " = ", z);
				break;

		case '*':
				z = x * y;
				writeln(x ," ", ops.times , " ", y, " = ", z);
				break;

		case '/':
				z = x / y;
				writeln(x ," ", ops.dividedby , " ", y, " = ", z);
				break;				

		default: 
				writeln("Invalid Operation!");

	}

	

}