FFLAGS="-std=legacy -g -Werror -Wextra -Wconversion -fsanitize=address"

for F in *.f; do gfortran $FFLAGS -c $F; done
gfortran $FFLAGS *.o -o rtest
rm *.o
