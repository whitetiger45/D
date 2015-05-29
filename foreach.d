import std.stdio;

void main()
{

	int [] num;
	
	foreach(numbers; 10..16)
	{
		//writeln(numbers);
		num ~= numbers;
	}


	writefln("Before: %s", num);
	foreach(numbers; num)
	{
		writefln(" %s", numbers * 2);
		//num ~= numbers;
	}
	writefln("After: %s", num);

	foreach(ref numbers; num)
	{
		numbers *= 2;
		//num ~= numbers;
	}

	writefln("After ref: %s", num);
	foreach(i, c; "bryan")
		writeln(i, ": ", c);

	writeln();
	foreach_reverse(i, c; "bryan")
		writeln(i, ": ", c);		

	string[int] names = [1: "one", 7: "seven", 20:"twenty"];
	
	int[string] values;
	foreach(key, value; names)
	{
		writeln(key, ": ", value);
		values[value] = key;
	}

		foreach(key, value; values)
	{
		writeln(key, ": ", value);
	}


}