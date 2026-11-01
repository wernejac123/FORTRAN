FFLAGS="-std=legacy -g -Wall -Werror -Wextra -Wconversion -fsanitize=address"
gfortran $FFLAGS -c pristack.f
gfortran $FFLAGS -c ipush.f
gfortran $FFLAGS -c ipop.f
gfortran $FFLAGS -c itest.f
gfortran $FFLAGS *.o -o itest
rm *.o
