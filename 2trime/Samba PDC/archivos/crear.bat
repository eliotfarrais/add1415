@echo off
dsrm "OU=FP,DC=eliot,DC=com" -exclude -noprompt -subtree -q
dsadd ou "OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=1CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=2CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=Departamentos,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=Informatica y comunicaciones,OU=Departamentos,OU=FP,DC=eliot,DC=com" -q
dsadd group "CN=1INF,OU=1CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -q
dsadd group "CN=2INF,OU=2CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -q
dsadd group "CN=PINF,OU=Informatica y comunicaciones,OU=Departamentos,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=Construccion y edificacion,OU=Departamentos,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=Programa de Cualificacion Profesional Inicial,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=1PCPI,OU=Programa de Cualificacion Profesional Inicial,OU=FP,DC=eliot,DC=com" -q
dsadd ou "OU=2PCPI,OU=Programa de Cualificacion Profesional Inicial,OU=FP,DC=eliot,DC=com" -q
dsadd group "CN=1CON,OU=1PCPI,OU=Programa de Cualificacion Profesional Inicial,OU=FP,DC=eliot,DC=com" -q
dsadd group "CN=2CON,OU=2PCPI,OU=Programa de Cualificacion Profesional Inicial,OU=FP,DC=eliot,DC=com" -q
dsadd group "CN=PCON,OU=Construccion y edificacion,OU=Departamentos,OU=FP,DC=eliot,DC=com" -q
rd /s /q C:\Users\datos
md C:\Users\datos
dsadd user -upn aalmqui@eliot.com "CN=ALMEIDA QUINTANA Aaron Jesus,OU=1CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -samid aalmqui -disabled no -pwd $M237787a# -mustchpwd yes -memberof "CN=1INF,OU=1CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -fn "Aaron Jesus" -ln "Almeida Quintana" -display "Aaron Jesus ALMEIDA QUINTANA" -q
echo ALMEIDA QUINTANA Aaron Jesus	[OK]
md C:\Users\datos\1INF\aalmqui
xcacls C:\Users\datos\1INF\aalmqui /Q /G CLH\aalmqui:f Administrators:f CLH\PINF:f
dsadd user -upn mbaegar@eliot.com "CN=BAENA GARCIA Manuel,OU=1CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -samid mbaegar -disabled no -pwd $M291065a# -mustchpwd yes -memberof "CN=1INF,OU=1CFGM,OU=Ciclo Formativo Grado Medio,OU=FP,DC=eliot,DC=com" -fn "Manuel" -ln "Baena Garcia" -display "Manuel BAENA GARCIA" -q
echo BAENA GARCIA Manuel	[OK]
md C:\Users\datos\1INF\mbaegar
xcacls C:\Users\datos\1INF\mbaegar /Q /G CLH\mbaegar:f Administrators:f CLH\PINF:f
xcacls C:\Users\datos\PCON /Q /G CLH\PCON:x Administrators:f
xcacls C:\Users\datos\PINF /Q /G CLH\PINF:x Administrators:f
xcacls C:\Users\datos\1INF /Q /G CLH\1INF:x Administrators:f
xcacls C:\Users\datos\2INF /Q /G CLH\2INF:x Administrators:f
xcacls C:\Users\datos\1CON /Q /G CLH\1INF:x Administrators:f
xcacls C:\Users\datos\2CON /Q /G CLH\2INF:x Administrators:f
