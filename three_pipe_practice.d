import std.stdio;
import std.conv;

void main()
{

	//auto z = to!int(readln());

	int z;
	readf(" %s", &z);

	int total = z * 9;

	writeln("The final total is: ", total);
}