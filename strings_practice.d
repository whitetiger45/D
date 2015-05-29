import std.stdio;
import std.string;
import std.array;

void main()
{
	string first, last, name;
	writeln("Enter first name: ");
	
	first = capitalize(chomp(readln()));
	//capitalize(first);

	writeln("Enter last name: ");
	last = capitalize(chomp(readln()));
	capitalize(last);

	name = first ~ " " ~ last;

	writeln("Hello ",  name);

	writeln("Enter a sentence, and I will chop it uppp from the first 'e' to the last 'e' ");
	string line = chomp(readln());
	sizediff_t first_e = indexOf(line, 'e');
	auto end = lastIndexOf(line, 'e');//same as sizediff_t

	auto slice = array([first_e, end]);

	string sentence = line[first_e .. (end + 1)];

	writeln(slice);
	writeln(sentence);
}