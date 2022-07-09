while IFS=" " read -r filename;
do
	awk -F, '{print$1}' "$filename".csv >> "$filename"_output1.csv  # You can also use awk 'BEGIN {FS=","}; {print$n}' "$filename".csv to extract nth column
	
	awk 'NR>=1 && NR<=5' "$filename"_output1.csv >> "$filename"_output2.csv # Extract the rows between 1 and 5


done < file.txt
