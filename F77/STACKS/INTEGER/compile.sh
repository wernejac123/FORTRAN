FFLAGS="-std=legacy -g -Wall -Werror -Wextra -Wconversion -fsanitize=address"

for F in *.f; do gfortran $FFLAGS -c $F; done
gfortran $FFLAGS *.o -o itest
rm *.o
