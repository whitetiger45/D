import std.stdio;
import std.math;
import std.algorithm;

void main(string[] args){

	float[] userInput;
	int x;
	writeln("How many values do you want to enter: ");
	readf(" %s", &x);
	
	for(int i = 0; i < x; i++){
		writeln("Enter a number: ");
		readf(" %s", &x);
		userInput ~= x;
	}
	//display the size of the array
	writeln("Array size: ", userInput.length);
	//display the array
	writeln("User array: ", userInput);
	
	//sort the array
	sort(userInput);
	writeln("Sorted array: ", userInput);

	//reverse the order
	reverse(userInput);
	writeln("Reversed array: ", userInput);

	//for(int i = 0; i < userInput.length; i++){
	//	writeln(userInput[i]," * 2 = ", userInput[i] * 2);
	//	writeln(userInput[i],"/5 = ", userInput[i]/5 );
	//}


}