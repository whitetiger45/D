import std.stdio;
import std.conv;
import std.string;
void main()
{
	// false means "no", true means "yes"
	bool
	existsCoffee = false;
	bool existsTea = true;
	writeln("There is warm drink: ", existsCoffee || existsTea);
	writeln("I will have something to drink: ", existsCoffee ^ existsTea);//^ means one or the other but not both

	bool beach;
	write("How many are we? ");
	int personCount;
	readf(" %s", &personCount);

	write("How many bicycles are there? ");
	int bicycleCount;
	readf(" %s", &bicycleCount);

	write("What is the distance to the beach? ");
	int distance;
	readf(" %s", &distance);

	bool existsCar = read_bool("Is there a car? ");
	bool existsLicense = read_bool("Is there a driver license? ");
	beach = (personCount == bicycleCount && distance < 10) || ((existsCar) && (existsLicense) && (personCount < 6));
	/*
	Replace the 'true' below with a logical expression that
	produces the value 'true' when one of the conditions
	listed in the question is satisfied:
*/
	writeln("We are going to the beach: ",beach);
}
/*
Please note that this function includes features that will
be explained in later chapters.
*/
bool read_bool(string message)
{
	// Print the message
	write(message,"(false or true) ");
	// Read the line as a string
	string input;
	while(input.length == 0) 
	{
		input = chomp(readln());
	}
	// Produce a 'bool' value from that string
	bool result = to!bool(input);
	// Return the result to the caller
	return result;
}