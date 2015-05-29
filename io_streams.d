import std.stdio;

void main()
{
	int studentCount;

	writeln("How many students are in the class: ");
	readf(" %s", &studentCount);//must include a space character before the %s to ignore whitespace

	writeln("How many teachers are there: ");
	int teacherCount;
	readf(" s%", &teacherCount);//must include the & to point to the address to store the input



	writeln("So, there are ", studentCount, " students in the class!");
}