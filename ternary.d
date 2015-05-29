import std.stdio;
import std.conv;

void main ()
{
	write("Enter a number: ");
	int number;
	readf(" %s", &number);
	writeln("$", to!string(number), (number > 0 ) ? " gained."  : " lost");

	auto amount = 10_000_000_000;
	write(amount);
	writeln(", of type: ", typeof(amount).stringof);
	auto value = 0;
	//while(1){
	//	write(value++);
	//}
	writeln("The clubs sign is: '\&clubs;'" );
	writeln("The euro sign is: \&euro;" );

}