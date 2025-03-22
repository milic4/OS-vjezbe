Naredbe korištene za rješavanje zadataka.  

## Zadatak1  
pwd  
ls  
mkdir vjezba1 && cd vjezba1  
touch README.md  
cd ..  

## Zadatak2 
touch vjezba2/file.txt  
cp vjezba2/file.txt vjezba2/file_copy.txt  
ls vjezba2  
rm vjezba2/file.txt && cd ..  
rmdir vjezba2  - ne mozemo brisat neprazan direktorij

## Zadatak3 
mkdir vjezba3/backup  
touch vjezba3/notes.txt vjezba3/todo.txt vjezba3/script.sh  
cp vjezba3/*.txt vjezba3/backup/  
rm vjezba3/script.sh && ls vjezba3  
mkdir vjezba3/backup/$USER  
mv vjezba3/backup/*.txt vjezba3/backup/$USER/   

## Zadatak4
mkdir vjezba4/subfolder  
touch vjezba4/$(hostname)  
mv vjezba4/$(hostname) vjezba4/$USER  
mv vjezba4/$USER vjezba4/subfolder/  
rm /Users/martinailic/Github/OS-vjezbe/vjezba4/subfolder/$USER  
touch .gitkeep  