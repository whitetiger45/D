import std.stdio;
import std.string;
import std.file;
import std.conv;

void main()
{

	write("What is the name of the file: ");

	string userInput = chomp(readln());


	File fin;
	if(exists(userInput))
		fin.open(userInput, "r");
	else
	{
		bool more;
		int x;
		writeln("File not found!\nCreating new file...");
		fin.open(userInput, "w+");
		write("Write your text now: ");
		do{
			string inline = readln();
			fin.writeln(inline);
			write("Anything else?\nEnter (true or false): ");
			string input = chomp(readln());
			more = to!bool(input);
			if(more)
				write("Write your text now: ");
		}while(more);
		fin.close();

	}
		
		fin.open(userInput, "r");
		if(fin.isOpen())
		{
				string sendTo = userInput ~ "_and_" ~ "write.txt";
				File fout = File(sendTo, "w");
				if(fout.isOpen())
						while(!fin.eof())
						{
								string line = fin.readln();
								fout.writeln(line);
						}
			fin.close();
		}



}