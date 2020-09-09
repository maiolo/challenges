# GDC (Global Defense Center)

## Para Executar o projeto

online: https://global-defense-center.herokuapp.com/

local:

Em um ambiente ruby com rails instalado, executar os comandos pelo terminal dentro da pasta do mesmo:

1. "bundle install"
2. "yarn install --check-files"
3. "rails db:reset"
4. "rails server"
5. abra o navegador e acesse "locahost:3000"


### Inicio do Projeto

Comecei criando um novo projeto em Rails, o primeiro desafio acabou sendo como criar o projeto dentro de uma pasta de outro repositório, já que por padrão o projeto rails cria seu próprio repositório. Consegui excluindo a pasta .git e adicionando no projeto atual.

O Segundo desafio foi como consumir o socket, que depois de muito pesquisar de como usar o socket.io no rails, acabei decidindo seguir o caminho do javascript mesmo, então o javascript recebe os dados do socket, e envia para o rails através de um post, que cria a ameaça no banco de dados.

### Acesso a usuário

Decidi não deixar liberado um cadastro de usuário para acessar a plataforma, para isso, foi necessário alterar as opções padrões do Devise, para permitir o login por username, e desabilitar a opção de cadastro.

O usuário determinado para acessar a plataforma é:

username: Administrator
password: 123456

PS: é possivel cadastrar novos usuários pelo console rails

### Criação dos Heróis

Realizei a criação dos heróis, decidi apenas usar 5 campos (nome do herói, rank do herói, status atual, latitude e longitude) além de uma foto, então criei uma view para a criação de heróis e um seed que realiza um cadastro de uma quantidade de heróis pré-definidos de todos os ranks com localidades aleatórias usando o Faker

### Geocoding

Confesso o que a questão de distancia, geolocalização foi algo que me assustou no começo, mas usando uma gem tornou tudo bastante simples e intuitivo.

Para realizar a alocação dos Heróis, criei um metódo que vai dobrado a distancia até encontrar um herói de rank definido dentro da área.

### Alocação e desalocação de Heróis

Sempre que uma ameaça surge pelo Socket, uma cadeia de açãoes se inicia:

- A ameaça é criada dentro do banco de dados.
- É então realizada uma busca por heróis próximos, iniciando com 10km de distancia, e dobrando até encontrar um herói do rank certo
- Então o tempo da "luta" é calculado, definindo um tempo entre 30 segundos e 5 minutos
- após esse tempo o herói é desalocado e a amaeça colocada como "inativa"

### front-end

Acabei não tendo tempo para trabalhar no front como gostaria, então foi apenas feito uma landing page simples, cards simples para exibir os heróis e uma tabela para listar as ameaças com seus status e o herói alocado, infelizmente ainda não se atualizam automáticamente, sendo necessário atualizar a página para as atualizações mais recentes.

## Melhorias

Algo que estaria em meu radar como prioridade, seria colocar todo o processo de backend de administração de ameaças para rodar de forma assíncrona, sem a necessidade da página estar aberta para popular o banco com novos dados.

Além de melhorar bastante o front, colocando mais dinamismo e atualizações em tempo real sem a necessidade de atualizar a página. Além de uma forma mais visual de demonstrar toda a alocação e desalocação de heróis que ocorre no backend.
