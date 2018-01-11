function guessing {	
# taking input for no of files
read guess
echo $guess
}
# echoing the number of files statement.
echo "How many files are there in the directory?"

# calling the guess function and getting the guess which is taken as a input and storing it in guess variable
guess=$(guessing)

# counting the no of files in the directory using wc with -l which is for no of lines.
count_files=$(ls|wc -l) # using pipe to get the output of ls as a input for wc.
#echo $a

# while loop for continous checking the if condition until it is true(ie. until the guess is not right)
while [[ true ]]
do
# if statement to check whether the guess was right.
if [[ $guess -eq $count_files ]]
then 
echo "Congratulations! You guessed it Right." # echoing it if guess is right as user won.
# breaking if the guess is correct
break

# checking for high guess condition
elif [[ $(echo $guess-$count_files) -gt 10 ]]
then 
echo "your guess is high try again"
let guess=$(guessing)

# checking for low guess condition
elif [[ $(echo $guess-$count_files) -lt -10 ]]
then 
echo "your guess is really low try again"
let guess=$(guessing)

# condition if guess is between low and high guess range.
else
echo "enter the guess again."
let guess=$(guessing)
fi
done

