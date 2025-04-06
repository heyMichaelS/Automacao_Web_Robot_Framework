    COMANDOS PARA RODAR TESTES EM ROBOT

roda tdos cenarios dentro deste deste 

robot nomedoteste.robot


roda um cenario especifico sem os demais

robot --test  "Cenário 2: Acessando o site da Google" teste.robot

Rodando por tag:
robot --include Teste3 teste.robot

Rodando excluindo uma tag:
robot --exclude Teste3 teste.robot

Se quiser rodar todos os asquivos de testes basta 

robot .

se quiser rodar em alfuma ordem basta ex:

robot teste2.robot teste.robot   

ai nesse caso executa na ordem que foi colocado se quiser que teste por exemplo roqde primeiro basta inverter a ordem.

colocando o report dentro da pasta anteriormente ficava solto dentro do projeto 
robot --outputdir report teste.robot

