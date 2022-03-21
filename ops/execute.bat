rem @ECHO OFF
@ECHO ON
cd ops
rem echo ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa a787983@tdist001s ^<^< EOF ops-cli agent check --servers tdist001s EOF > commands.txt
echo ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa a787983@tdist001s ^<^< EOF ops-cli deploy --object-code UOW --module uow-test-tomcat --perimeter DEV --server tdist001s --action APPLY --sequential-mode SOFTWARE --preview EOF > commands.txt
rem echo ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa a787983@tdist001s ^<^< EOF ops-cli deploy --object-code UOW --module uow-test-tomcat --perimeter DEV --server tdist001s --action DRY_RUN --sequential-mode SOFTWARE EOF > commands.txt
rem echo ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa a787983@tdist001s ^<^< EOF ops-cli deploy --object-code UOW --module uow-test-tomcat --perimeter DEV --server tdist001s --action APPLY --sequential-mode SOFTWARE EOF > commands.txt
plink.exe a787983@55.16.242.224 -pw Fh6y-5rypE21 -m commands.txt -batch
PAUSE
exit
