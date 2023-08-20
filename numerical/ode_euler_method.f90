! ***********************************************
! *	Euler method for ODEs formulas				*
! *	yprime = f(x,y)								*
! *	y(x_0) = y_0								*
! *	x_(n+1) = x_n + h where h is the step size	*
! *	y_(n+1) = y_n + h(x_n, y_n)					*
! *												*
! *				Arman Dindar Safa				*
! * 											*
! ***********************************************
program eulermethod
	implicit none
	! call the function outside the program
	real, external :: f
	real :: x, y, h, xg ! xg = x given
	integer :: n, i
	! read initial condition as x_0 and y_0 

	print *, "-----------------------------------------------"
	print *, "-					Euler method for ODEs 		-"
	print *, "-					Arman Dindar Safa			-"
	print *, "-----------------------------------------------"

	print *, "Please insert initial condition at x: "
	print *, "************************************* "
	read (*,*) x
	print *, "Please insert initial condition at y: "
	print *, "************************************* "
	read (*,*) y
	print *, "Please insert the width of the x or step size (h)  : "
	print *, "************************************* "
	read (*,*) h
	print *, "Please insert the x at which you desire the solution to be found  : "
	print *, "************************************* "
	read (*,*) xg
	! x_n+1 = x_n + h
	! formula below finds the value of n
	n = int((xg - x) / h + 0.5 ) 

	do i = 1, n
		! x_(n+1) = x_n + h where h is the step size
		! y_(n+1) = y_n + h(x_n, y_n)
		x = x + h ! x_2 = x_1 + h ... x_1 = x_0 + h ...
		y = y + h * f(x, y)
		print *, "Print the val. of x and it's corresponding y : ", x, y
		print *, "----------------------------------------------------------------------------"
	enddo

end program eulermethod

real function f(x, y)
real :: x, y
! function below is just an example
f = x + 2 * y

end 