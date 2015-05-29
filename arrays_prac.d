import std.stdio;
import std.algorithm;//provides algorithm for sorting, reversing an array
void main(){

	int[10] arrayExample;//in D; fixed length array, size cant change

	//can have an array of bools
	bool[10] arrayOfBools;//example

	int[] dynamicArray;// no value needed inside to iniziale a dynamic array, size can change
	writeln("Size of array: " , dynamicArray.length); //gives the size of the array
	dynamicArray.length = 5;//sets the size to five

	//if the values are known ahead of time, the array can be inizialied using brackets
	//// Assuming that February has 28 days
	int[12] monthDays = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

	int[10] allOnes = 1;//all initialized to one

	//coping static arrays
	int[5] source = [ 10, 20, 30, 40, 50 ];
	int[5] destination;
	destination = source;

	//adding elements to a DYNAMIC array (WILL NOT WORK FOR STATIC ARRAYS)
	int[] array;// empty
	array ~= 7;// has a single element
	array ~= 360;// has two elements
	array ~= [ 30, 40 ];// has four elements

	//combining arrays
	int[10] first = 1;
	int[10] second = 2;
	int[] result;

	result = first ~ second; 
	writeln("Result.length: " , result.length);//prints 20

	result ~= first;
	writeln("Result.length: ", result.length);//prints 30

	//int[20] result;
	//result ~= first; produces a compilation error because result is STATIC!!
	
	//int[10] first = 1;
	//int[10] second = 2;
	//int[21] result;
	//result = first ~ second; throws an error and exits program
	

	//sorting an array
	int[] newArray = [ 4, 6, 1, 9, 2, 7 ];
	writeln("Initial Array Order: ", newArray);
	sort(newArray);
	writeln("New Array Order: ", newArray);

	//reversing the order
	reverse(newArray);
	writeln("Reversed Order: ", newArray);

//--------------------------------------------------------------------

	//exercise 2
	int z;
	writeln("Enter numbers...when you are finished, enter -1!");
	//initialize the arrays
	int[] evens;
	int[] odds;

	do{

		writeln("Enter a number: ");
		readf(" %s", &z);
		if(z % 2 == 0){
			evens ~= z;//no need to use count variable to keep track for D arrays
		}
		else{
			if(z != -1)
				odds ~= z;
		}

	}while(z != -1);

	sort(evens);
	sort(odds);
	writeln("Odds: ", odds, "\nEvens: ", evens);

	double[] arrayOfDoubles = [ 1, 20, 2, 30, 7, 11 ];
	double[] ar = arrayOfDoubles.dup;
	double[] slice = arrayOfDoubles[0 .. $];
	for(int i = 0; i < arrayOfDoubles[$-1]; i++){
		if(arrayOfDoubles[i] > 10){
			slice[i] = arrayOfDoubles[i]/2;
		}
	}

	writeln("Array: ", arrayOfDoubles);
	writeln("Slice: ", slice);
	writeln("A: ", ar);

}