#include <iostream>

// Probably not valid, but for testing what ever!
template<typename T>
void print_something(char* msg, T test) {
	std::cout << msg << " " << test << std::endl;
}

constexpr char* why(char* you) {
	return "do this";
}

int main(int argc, const char** argv) {
	print_something("Hello, World!", 0x1350)
	
	int x;
	x = 1337;

	float d = 0.1351f;
	double f = 0.001036103613061;
	char* well = "hello, there!";

	return 0;
}
