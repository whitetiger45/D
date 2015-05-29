import std.stdio;
import std.process;
import std.string;

void main()
{
	writeln("Which program would you like to run: ");
	string com = chomp(readln());
	const result = executeShell(com);
	const returnCode = result[0];
	const output = result[1];
	writefln("Command returned: %s", returnCode);
	writefln("It's Output:\n%s", output);
}