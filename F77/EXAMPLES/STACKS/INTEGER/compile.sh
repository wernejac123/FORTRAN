FFLAGS="-std=legacy -g -Wall -Werror -Wextra -Wconversion -fsanitize=address"
gfortran $FFLAGS -c entry.f
gfortran $FFLAGS -c add.f
gfortran $FFLAGS -c deli.f
gfortran $FFLAGS -c prentry.f
gfortran $FFLAGS -c bsort.f
gfortran $FFLAGS -c plook.f
gfortran $FFLAGS -c llook.f
gfortran $FFLAGS -c phonebk.f
gfortran $FFLAGS *.o -o phonebk
rm *.o
