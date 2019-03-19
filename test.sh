#!/bin/bash
#prompt user what is the name of the file to make:
read -p "What is the name of file you want to make: " file
#check if file exist all files
echo  "checking files....."
arr=(files=(*))
filelisting=()
echo $arr
#for var in $arr
#do
 # $filelisting=$var
#done

if [["${file}" == ${filelisting[*]}]]
then
   echo "the file exists"
else
   echo "Proceeding"
fi

#concatenate until end of file and redirect the cat to the new file
cat << EOF | cat > sc.sh
#!/bin/bash
echo HELLO
echo 'Hello what is your name? '
read name
echo "well, hello there \${name}"
echo "\${name}"
EOF

chmod +x sc.sh
./sc.sh

read -p "age? " age
echo Your age: ${age}

#IF AND ELSE STATEMENTS
echo "your UID is ${UID}"

if [["${UID}" -eq 0]]
then
   echo "yey, you are root"
else
   echo "you are not root"
fi
