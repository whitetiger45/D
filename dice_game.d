import std.stdio;

void main(){

	write("Enter a number: ");
	int userChoice;
	readf(" %s" , &userChoice);

	if(userChoice <= 500 && userChoice >= 1)
		writeln("You won!");
	else if(userChoice >= 501 && userChoice <= 1000)
		writeln("Computer wins!");
	else
		writeln("Error, Invalid value given: ", userChoice);


}