import std.stdio;
import std.random;

void main(){

	//int cookie = 5;

	//while(cookie >= 0){
		
	//	cookie--;
	//	if(cookie == 1){
	//		writeln("Theres only ", cookie, " cookie left, you sure you want it?");
	//		continue;//
	//	}
	//	if(cookie < 0)
	//		break;
	//	writeln("Took a cookie, ", cookie, " left...");
	//}


	////-------------------------------------------------------------

	int anna;
	
	int num;
	int min = 1; 
	int max = 101;
	int guess = uniform(1, 101);
	int previousGuess;
	writeln("Enter your number, and I will try to guess what you entered: ");
	readf(" %s", &num);
	do{
		writeln("I think your number is: ", guess, "...");
		if(num < guess)
		{
			writeln("but that's wrong...too high");
			max = guess;
			previousGuess = guess;
		}
		else if(num > guess)
		{
			writeln("but that's too low...");
			min = guess;
			previousGuess = guess;
		}
		guess = uniform(min, max);
		if(guess == previousGuess)
			guess = uniform(min, max);
	}while(guess != num);

	writeln("Finally!...Your number was: ", num);
	//while(anna <= 0 || anna > 10){
	//	writeln("number must be less than 10, greater than 0");
	//	readf(" %s", &anna);
	//}
	
	//int bill;
	//writeln("Bill, try to guess anna's number: ");
	//readf(" %s", &bill);
	//while(bill != anna){
	//	writeln("guess again");
	//	readf(" %s", &bill);
	//}

	//writeln("Good job, you guessed it!");

	//for(int i = 0; i < 9; i++)
	//{
		
	//	for(int l = 0; l <= i; l++)
	//	{
	//		write('*');
	//	}
	//	writeln("");
	//}

	//writeln("");
	//for(int i = 0; i < 9; i++)
	//{
		
	//	for(int l = 0; l < i; l++)
	//	{
	//		write(" ");
	//	}
	//	for(int c = 9; c > 0; c--)
	//		write('*');
	//	writeln("");
	//}

}