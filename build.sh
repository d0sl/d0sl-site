echo -e "\033[0;32mBuilding to ./public folder...\033[0m"

# Build the project. if using a theme, replace with `hugo -t <YOURTHEME>`
./hugo-ext -b https://d0sl.org -t godocs-1
