import std.stdio;
import std.algorithm;
import std.string;

enum totalLines = 20;
enum totalColumns = 60;

/*
* The 'alias' in the next line makes 'Line' an alias of
* dchar[totalColumns]. Every 'Line' that is used in the rest
* of the program will mean dchar[totalColumns] from this
* point on.
*
* Also note that 'Line' is a fixed-length array.
*/

alias Line = dchar[totalColumns];
/*
* A dynamic array of Lines is being aliased as 'Canvas'.
*/
alias Canvas = Line[];
/*
* Prints the canvas line by line.
*/
void print(Canvas canvas)
{
	foreach (line; canvas) 
	{
		writeln(line);
	}
}
/*
* Places a dot at the specified location on the canvas. In a
* sense, "paints" the canvas.
*/
void putDot(Canvas canvas, int line, int column, char paintBrush)
{
	canvas[line][column] = paintBrush;
}
/*
* Draws a vertical line of the specified length from the
* specified position.
*/
void drawVerticalLine(Canvas canvas, int line, int column, int length, char paintBrush)
{
	foreach (lineToPaint; line .. line + length) 
	{
		putDot(canvas, lineToPaint, column, paintBrush);
	}
}

void drawHorizontalLine(Canvas canvas, int line, int column, int length, char paintBrush)
{
	foreach (lineToPaint; column .. column + length) 
	{
		putDot(canvas, line, lineToPaint, paintBrush);
	}
}

void drawSquares(Canvas canvas, int line, int column, int length, char paintBrush)
{
	drawVerticalLine(canvas, line, column, length, paintBrush);
	drawVerticalLine(canvas, line, column+length, length, paintBrush);

	drawHorizontalLine(canvas, line+length, column, length+1, paintBrush);
	drawHorizontalLine(canvas, line, column, length+1, paintBrush);
}

void main()
{
	Line emptyLine = '.';
	/* An empty canvas */
	Canvas canvas;
	/* Constructing the canvas by adding empty lines */
	foreach (i; 0 .. totalLines) 
	{
		canvas ~= emptyLine;
	}
	/* Using the canvas */
	//drawVerticalLine(canvas, 5, 0, 10);
	//drawHorizontalLine(canvas, 15, 0, 31);
	//drawVerticalLine(canvas, 5, 30, 10);
	//drawHorizontalLine(canvas, 5, 0, 30);
	bool addStroke = true;
	int x, y, z;
	char c;
	do
	{

		write("Enter a column (0-60): ");
		readf(" %s", &x);
		writeln("Enter a row (0-20): ");
		readf(" %s", &y);
		writeln("Enter a length less than row(", totalLines - y, "), and column(", totalColumns-x,") : ");
		readf(" %s", &z);
		z = (z <= (totalLines - y) ? z : (totalLines - y));
		z = (z <= (totalColumns - x) ? z : (totalColumns - x));
		writeln("Enter a char to use as the paint brush: ");
		readf(" %s", &c);
		drawSquares(canvas, x, y, z, c);
		print(canvas);
		writeln("You want to keep painting...True or False? ");
		readf(" %s", &addStroke);
	
	}while(addStroke);
	//print(canvas);
}

//void printMenu(string [] firstEntry, int firstNumber)
//{
//	writeln(' ', firstNumber, ": ", firstEntry[0]);
//	writeln(' ', firstNumber + 1, ": ", firstEntry[1]);
//	writeln(' ', firstNumber + 2, ": ", firstEntry[2]);
//	writeln(' ', firstNumber + 3, ": ", firstEntry[3]);
//	writeln(' ', firstNumber + 4, ": ", firstEntry[4]);
//}

//void main()
//{

//	string[] items =
//	["Black", "Red", "Green", "Blue", "White"];
//	printMenu(items, 1);
//}