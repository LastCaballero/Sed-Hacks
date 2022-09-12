# this script will replace all \n with , and will delete the last comma. 

# You can use it to create tags.

# start with sed -r -n -f this_file another_file
# -r regular expressions turned on
# -n no output
# -f script_file

:label 

$! {
	N;
	b label
} 

$ {
	s/ |\n/,/g;
	s/,$//;
	p
}
