# Beginner Friendly Bash Script

# Task 1: Simple Variable Manipulation
# Write a bash script that declares two variables, assigns string values to them, and then concatenates and prints them.
var1=`hostnamectl | grep "Operating System"`
var2=`dmidecode -t system | grep "Manufacturer:"`
var3=`dmidecode -t system | grep "Product Name:"`
echo "This virtual machine with $var3 is running on $var2 with the $var1"

# Task 2: Conditional Statements
# Create a bash script that takes a user's name as a command-line argument. 
# The script should check if the provided name matches a predefined name (e.g., "John"). 
# If it does, the script should print a message like "Hello, John!" If it doesn't match, print a message like "Sorry, you are not John."
read -p "Hello Could you please say me your name: " name
#echo "Hello $name"
defined_name=Cigdem
if [ $name == $defined_name ]
then
    echo "Hello $name "
else
    echo "Sorry, your are not $defined_name"
fi


# Task 3: File Manipulation
# Write a bash script that takes a file name as an argument. 
# The script should check if the file exists and is readable, and if it does, it should display the content of the file.
read -p "Which file are you looking for? : " name ## answer as "push"
file_name=`ls | grep $name`
echo $file_name
if [[ -a $file_name && -r $file_name ]]
then
    cat $file_name
else
    echo "File is not exist"
fi

# Task 4: Advanced Logic with Loops
# Create a bash script that prompts the user for a string and a number, and then uses a loop to print the string the specified number of times.
read -p "Could you please say some text: " string
echo $string
read -p "Could you please say me a number now " number
for ((i=1; i<=number; i++))
do
    echo $string
done

# Task 5: Combining Commands and Logic
# Write a bash script that takes a directory path as a command-line argument and lists all files in that directory. 
#For each file, check if it's a regular file or a directory. If it's a directory, list its contents as well.