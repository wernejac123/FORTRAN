FFLAGS="-std=legacy -g -Wall -Werror -Wextra -Wconversion -fsanitize=address"
gfortran $FFLAGS area.f -o area
echo done
