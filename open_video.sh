path='/mnt/paramount'
function g ()
{
 
 echo -n 'Begining procedure. Please embark on the road'
 mkdir $path'/pkg' && touch $path'/pkg/list'
 echo -n '#########:' $1 >> $path'/pkg/list'
 pacman -Sp $1 >> $path'/pkg/list'
 echo 'Download it?'
 read p
 	pacman -Sw $1 
 echo 'Chek if was downloaded before or get it online'
 sed -i 's/.*.*\///g' $path'/pkg/list' 
}


mount -o remount,size=8G /run/archiso/cowspace/
