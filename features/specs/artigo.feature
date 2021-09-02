#language: pt

Funcionalidade: Artigo
    Como usuario comum, posso ler um artigo publicado no blog
    
    Contexto:
        Dado que acesso o blog

    @artigo
    Cenario: Artigo disponivel

        Quando eu escolho o artigo "Como criar um projeto com Nestjs"
        Entao o artigo pode ser visualizado

    @voltar_ao_topo
    Cenario: Voltar para o topo do artigo

        Quando eu escolho o artigo "AWS Well-Architected Framework: conheça os cinco pilares"
        E rolo a tela para baixo
        E clico na opcao de voltar ao topo
        Entao a tela rola para o inicio do artigo