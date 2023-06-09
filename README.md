## Sobre o Projeto

O projeto foi escrito com base no desafio encaminhado por email. A Api foi desenvolvida usando o Laravel 8.75 e o ambiente onde a aplicação roda é usado o Laradock.

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
Obs: se você a tiver uma imagem do laradock em sua máquina, verifique se a senha do MySql está de
acordo com as suas configurações. Caso você não esteja usando a senha padrão, abra o arquivo
./bootstrap.sh e na linha 25 altere a senha.
```

4. Execute o comando <code>docker ps</code> para ter certeza que os containers do docker estão funcionando corretamente.
5. Se ao acessar http://localhost e http://localhost/swagger e tiver tudo ok, seu sistema está rodando corretamente.

Para subir os containers execute o comando

```
docker-compose up -d nginx mysql
```

## Insomnia

Os arquivos do Insomnia estão no projeto TiSaude-Insomnia-Request.json
<code>https://github.com/lmbagolin/tisaude-docker/blob/main/TiSaude-Insomnia-Request.json</code>

## ER

O ER do sistema esta no projeto tisaude-docker/ER.png

<img src="https://github.com/lmbagolin/tisaude-docker/blob/main/ER.png" />
