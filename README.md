# E-eye

Para a utilização, serão necessários:

JDK 1.8+ (http://www.oracle.com/technetwork/pt/java/javase/downloads/index.html)

Um banco local MongoDB rodando (https://www.mongodb.com/)

Um banco Mysql rodando, para maior facilidade usamos o WAMP para o desenvolvimento (http://www.wampserver.com/en/)

Uma instalação do maven (a maioria das IDEs para Java hoje em dia tem) (https://maven.apache.org/)

Lombok instalado para sua IDE (https://projectlombok.org/)


No seu mysql, crie um banco de nome "kd", ele será usado para simular um ecommerce.
Nesse banco, execute o sql no arquivo ecommerce.sql.

Em sua IDE, importe os módulos (api-dao, api-model, api-service, dashboard) do sistema como maven projects. Deve resultar em algo como isso:

![](modulos_eclipse.PNG)


Para rodar o módulo api-service, basta rodar a class ServletCoreAPI.java como uma aplicação java normal, é normal que demore alguns minutos para executar, pois o ecommerce possui imagens de muitos produtos

O ecommerce deve ficar localizado no endereço localhost:9090/tcc/index


Para rodar o módulo dashboad, basta rodar a class ServletCoreDashboard.java como uma aplicação java normal.

A dashboard deve ficar localizada na pagina localhost:7070/tcc/dashboard