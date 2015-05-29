import std.stdio;
import std.string;

void main()
{

	int [string] dayNumbers; 

	dayNumbers["Monday"] = 0;
	dayNumbers["Tuesday"] = 1;

	writeln(dayNumbers);

	// key : element
	int[string] dayNumbers2 =["Monday" : 0, "Tuesday": 1, "Wednesday" : 2, "Thursday" : 3, "Friday": 4, "Saturday": 5, "Sunday": 6 ];
	writeln("\n\n", dayNumbers2["Tuesday"]);// prints 1

	dayNumbers.remove("Tuesday");//removes tuesday from the array

	if("Tuesday" in dayNumbers)
	{
		writeln("Tuesday is in the array");
	}
	else
	{
		writeln("Tuesday is not in the array");
	}

	string[string] colors = ["black": "siyah",
							"white":"beyaz",
							"red":"kırmızı",
							"green" : "yeşil",
							"blue" : "mavi"
							];
	writefln("I know the Turkish names of these %s colors: %s",
				colors.length, colors.keys);

	write("please ask me one: ");
	string inEnglish = chomp(readln());

	if (inEnglish in colors) 
	{
		writefln("\"%s\" is \"%s\" in Turkish.",
				inEnglish, colors[inEnglish]);

	}
	else
	{
		writeln("I don't know that one.");
	}

	inEnglish = string.init;//clears the array
	writeln("Size of inEnglish now is: ", inEnglish.length);

	string[int] grades;

	grades[90]= "emre";
	grades[85]= "emre";
	grades[99]= "emre";

	writeln("Emres grades for the three tests were: ", grades.keys);

	

}