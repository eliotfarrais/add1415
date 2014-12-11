#!/usr/bin/ruby
# encoding: utf-8
#whoiam /all sacará el sid del usuario que estamos usando
# papelera [ --help | -r file [ destino ] | --info | --clean | --file ] 


PARAM1=ARGV[0] || ""
PARAM2=ARGV[1] || ""
PARAM3=ARGV[2] || ""
system('md %USERPROFILE%\Papelera')
system('cls')

USERNAME=`echo %USERNAME%`
puts USERNAME

if PARAM1=="--help" || PARAM1=="" 
	puts 'Archivo en Ruby para eliminar mediante comando:'
	puts "papelera [ --help | -r file [ destino ] | --info | --clean | file ] "
elsif PARAM1=="-r" then
	system("move %USERPROFILE%"+PARAM2+' '+PARAM3)
	system('cls')
	puts "Recuperando el archivo "+PARAM2+" en "+PARAM3
elsif PARAM1=="--clean" then
	system('rmdir /s /q %USERPROFILE%\Papelera || cls')
	puts "La papelera ha sido borrada sin problemas"	
elsif PARAM1=="--file" 
	puts "Se va a eliminar el fichero "+PARAM2 
elsif PARAM1=="--info" then
	system('dir %USERPROFILE%\Papelera')
else
	system('move '+PARAM1+' %USERPROFILE%\Papelera')
	system('cls')
	puts "Borrando el archivo "+PARAM1
end


