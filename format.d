import std.stdio;
import std.format;

void main()
{

	write("Enter a value: ");

	int val;
	readf(" %s", &val);

	writefln("Your number as hexidecmial: %x", val);//must include the f in writefln to print formated line
	writefln("Your number as binary: %b", val);


	write("Enter a percentage value: ");

	double input;
	readf(" %s", &input);
	writefln("Your number was %%%.2f", input);

	writeln("Enter the date: ");
	int day;
	int month;
	int year;
	char p;
	readf(" %d %c %d %c %d", &year, &p, &month, &p, &day);
	//readf(" %c", &p);
	//readf(" %d", &month);
	//readf(" %c", &p);
	//readf(" %d", &day);

	writeln("\nThe day is: ", day, "\nThe month is: ", month, "\nThe year is: ", year);

	

}