import std.stdio;

void swap(ref int first, ref int second)
{
	immutable int temp = first;
	first = second;
	second = temp;
}

void main()
{ //we want to swap the parameters that are passed to swap
	int a = 1;
	int b = 2;
	swap(a, b);
	writeln(a, ' ', b);
}