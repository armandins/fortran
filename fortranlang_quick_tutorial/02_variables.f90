program variables
	implicit none
	! 5 types of variables in fortran
	! integer, real (float), complex, character and logical (boolean)
	integer::amount
	real::pi
	complex::frequency
	character::initial
	logical::isOkay

	! now assign values to the variables
	amount = 10
	pi = 3.1415927
	frequency = (1.0, -0.5)
	initial = 'A'
	isOkay = .false.

	! note that let's say
	! integer::amount = 10 won't work!

	! we can output our variables by saying
	print *, 'The value of amount (integer) is: ', amount
	print *, 'The value of pi (real) is: ', pi
	print *, 'The value of frequency (complex) is: ', frequency
	print *, 'The value of initial (character) is: ', initial
	print *, 'The value of isOkay (logical) is: ', isOkay

	! we can read values from command window using read statement

	print *, 'The current value of amount is: ', amount
	print *, 'Enter a new value for amount: '
	read(*,*) amount
	print *, 'The new value for amount is: ', amount

	! list of arithmetic operators
	! basicaly works like C lang except for exponent operator which works like python lang ( ** )
	! for practice, we can calculate the area of a circle
	! run this following program explicitly
	real::area
	real::radius
	print *, 'Enter circles radius:'
	read(*,*) radius

	area = pi * (radius**2)

	print *, 'Area of the circle is: ', area



end program variables