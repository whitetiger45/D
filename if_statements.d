import std.stdio;

void main(){
	bool coffeeExists = false;
	bool neighborIsHome = true;
	bool existsBike = false;

	if(coffeeExists){
		writeln("Drink coffee");
		writeln("Then wash the cup!");
	}else if(existsBike){
			writeln("ride bike to good place");
	}else if(neighborIsHome){
		writeln("walk to the neighbors");
	}else{
		writeln("Stay home and pout!");
	}


}