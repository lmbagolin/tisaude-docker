## Sobre o Projeto

O projeto foi escrito com base no desafio encaminhado por email.

Para rodar o projeto, siga os passos a seguir

1. Crie uma pasta tisaude (ou com o nome que você desejar)
2. Dentro desta pasta baixe os projetos tisaude-api e tisaude-docker

```
https://github.com/lmbagolin/tisaude-api
```

```
https://github.com/lmbagolin/tisaude-docker
```

3. Dentro da pasta tisaude-docker execute o comando

```
./bootstrap.sh
```

```
Ps: se você a tiver uma imagem do laradock em sua máquina, verifique se a senha do MySql está de
acordo com as suas configurações. Caso você não esteja usando a senha padrão, abra o arquivo
./bootstrap.sh e na linha 25 altere a senha.
```

4. Execute o comando <code>docker ps</code> para ter certeza que os containers do docker estão funcionando corretamente.
5. Se ao acessar http://localhost e http://localhost/swagger e tiver tudo ok, seu sistema está rodando corretamente.

Os arquivos do Insomnia estão no projeto tisaude-api/TiSaude-Insomnia-Request.json

O ER do sistema esta no projeto tisaude-docker/ER.png
