---
title: Monitorando a merenda no Pará
subtitle: Uma experiência de coleta de dados para ação cidadã
author: Andrés M. R. Martano¹, Gisele S. Craveiro¹, Emilie Reiser², Marisa Villi¹
date: Maio de 2017
lang: pt-BR
classoption:
	- oneside
papersize: a4
fontsize: 12pt
margin-top: 1in
margin-left: 1in
margin-right: 1in
margin-bottom: 1in
link-citations: true
documentclass: memoir
header-includes:
	- \input{extra.latex}
include-before:
	- \input{title.latex}
include-after:
	- <p class="center"><a href="http://creativecommons.org/licenses/by-sa/4.0"><img src="./media/by-sa.png" width="188" /></a></p>
---

\newpage
<hr>


**Autoria**

\vspace{0.5cm}

*Andrés M. R. Martano¹, Gisele S. Craveiro¹, Emilie Reiser², Marisa Villi¹*

\vspace{0.5cm}

¹**[Colaboratório de Desenvolvimento e Participação da USP](http://colab.each.usp.br) (Colab-USP):** Grupo de pesquisa da Universidade de São Paulo (USP) que atua também com desenvolvimento de software e na formação de pessoa. Trabalha em parceria com governos e organizações da sociedade civil. Entre seus objetivos principais estão: democratização do acesso a bens culturais, diagnóstico do acesso a dados, promoção do acesso à informação pública, transparência, controle e participação social.

²**[MIT Media Lab’s Center for Civic Media](https://civic.mit.edu) (Civic Media):** Grupo de pesquisa que estuda e desenvolve novas tecnologias para facilitar a participação e engajamento cidadão. O grupo trabalha colaborativamente com diversas comunidades pelo mundo para criar e avaliar ferramentas que estimulam a coleta e divulgação de informação para a ação cidadã. Explora sistemas para analisar o ecossistema de mídia e amplificar as vozes de grupos marginalizados.

\vspace{1cm}

**Agradecimentos**

Este trabalho só foi possível graças ao apoio do Instituto Humanitas360 e colaboração do Ministério Público do Estado do Pará (Belém, Santarém e Ponta de Pedras), do Observatório Social de Belém, do Movimento Pacto Estudantil Pela Educação no Pará, do Projeto SOL e de outros parceiros de Santarém, Belém, Ponta de Pedras, Ilhabela e São Paulo. Nossos sinceros agradecimentos.

\vspace{1cm}

**Financiamento**

O financiamento desta pesquisa foi provido pelo **[Instituto Humanitas360](https://humanitas360.org)**.

\vfill

\begin{center}
\href{https://colab-usp.github.io/monitorando-relatorio-fase2}{Versão Online (HTML)} \\
\href{https://github.com/colab-usp/monitorando-relatorio-fase2}{Repositório} \\
\vspace{1cm}
\href{http://creativecommons.org/licenses/by-sa/4.0}{\includegraphics[width=5.00000cm]{./media/by-sa.png}} \\
\vspace{1cm}
\textbf{Maio de 2017} \\
\end{center}

\vspace{2cm}

\newpage
\tableofcontents

<hr>

Introdução
==========

Durante as últimas décadas, a popularização de tecnologias como a internet e os aparelhos celulares têm despertado grandes expectativas sobre mudanças na forma como as pessoas participam da política e interagem com seus governos [@techenga;@plancrowd]. Um dos eixos de iniciativas nesse sentido busca fomentar ou permitir às pessoas a coleta colaborativa de dados, visando ações cidadãs. Tais iniciativas abordam diversos temas como: respostas a catástrofes [@disaster], criação de ciclovias [@databasedpart], mapas de acessibilidade [@acessib], monitoramento de problemas ambientais [@sensr1] ou reporte de problemas urbanos [@fix].

Porém, quando olhamos para as tecnologias disponíveis ou usadas para a coleta dos dados, geralmente são ferramentas voltadas para um único tema ou complexas de serem adaptadas, não permitindo às pessoas sem elevado domínio da computação de criarem suas próprias iniciativas de coleta de dados [@mocomapps;@sensr0].

Entre as ferramentas que são flexíveis a ponto de poderem ser usadas para diversos temas, e simples o bastante para que a maioria das pessoas possa utilizá-las, ainda podemos diferenciá-las entre favorecerem dinâmicas de usos mais individualizadas ou coletivas. No primeiro caso uma pessoa criaria uma iniciativa de coleta de dados, que então passaria a receber dados de outros usuários da ferramenta também interessados no mesmo tema, sendo que cada ator agiria de maneira independente (sem uma articulação organizada entre eles). No segundo caso a iniciativa já seria criada por um grupo de pessoas ou organizações, planejando em conjunto a coleta e uso dos dados.

Neste trabalho, através de dois estudos de caso, acompanhamos o uso da plataforma Monitorando a Cidade, uma ferramenta para coleta cidadã de dados que busca ser simples e flexível. A proposta de uso da mesma, como apontado pela metodologia apresentada pelos criadores da plataforma, busca incentivar um uso coletivo: uma comunidade se reunindo, elencando suas prioridades, criando a campanha de coleta de dados, analisando e refletindo sobre os dados obtidos e decidindo como usá-los.

Analisando esses estudos de caso buscamos compreender melhor diversas questões relacionadas ao uso de tecnologias de informação e comunicação para o monitoramento de serviços públicos por cidadãos. Através de encontros e entrevistas com pessoas envolvidas no uso da ferramenta, discutimos sobre como a coleta e uso de dados pode afetar a atuação política dessas pessoas, a relação com outras instituições e grupos, e a própria forma como enxergam a sua responsabilidade para com a comunidade.

Perguntas de Pesquisa
---------------------

Para ajudar a guiar este trabalho foram enunciadas as seguintes perguntas de pesquisa, agrupadas em 3 conjuntos:

1.  **Percepção sobre dados e uso deles para advocacy**
    a.  Pode a produção de conjuntos de dados ajudar os cidadãos a desmistificarem o conceito de dados e ampliarem seu entendimento sobre o que é um “dado”?
    b.  Durante o processo de monitoramento, os participantes aprendem a fazer perguntas e juntar informações para melhor entender um assunto?
    c.  Analisando e visualizando os resultados da coleta, podem os cidadãos adotarem os dados como ferramenta para desenvolver e defender um argumento, ajudando em sua articulação e comunicação?
    d.  Podem os dados coletados pela sociedade civil apoiar processos de cobrança ou pressão pela prestação de serviços públicos?
2.  **Relacionamento entre cidadãos e poder público ou instituições locais**
    a.  No processo de implementar campanhas de monitoramento, conseguem grupos da sociedade civil desenvolver ou consolidar parcerias e relacionamentos?
3.  **Senso de eficácia e responsabilidade para com a cidade**
    a.  No processo de discutir prioridades, desenvolver indicadores e coletar informações, podem os cidadãos fortalecer seu senso de eficácia e responsabilidade coletiva pela manutenção de infraestrutura e serviços públicos?

Revisão Bibliográfica
=====================

Assim como os valores de uma sociedade podem mudar ao longo do tempo, sua visão sobre o que seria um "bom cidadão" também pode ser modificada. Analisando a história dos Estados Unidos, @goodciti argumenta que a visão predominante sobre o papel do cidadão foi sendo alterada e mesclada com concepções anteriores, conforme as estruturas da sociedade também mudavam.

O surgimento da internet e demais tecnologias relacionadas também teriam impactado a visão sobre o papel do cidadão, reforçando a ideia de que ele passaria a buscar muito mais informações para basear sua atividade política. @goodciti coloca que, apesar da maior disponibilidade de informações, seria questionável acreditar que a maioria das pessoas realmente se aprofundaria em diversos temas buscando uma atuação política mais consciente.

O mesmo autor argumenta a favor de cidadãos que não necessariamente dominariam vários temas, mas estariam atentos para entrarem em ação em casos específicos quando necessário, por exemplo, em uma falha das instituições responsáveis. Nessa visão, a atuação do cidadão não estaria restrita às eleições e nem aos canais tradicionais, mas também não seria alheia às instituições, chegando a agir em parceria com estas. A tecnologia teria então um papel importante para facilitar a participação de mais pessoas e de maneiras mais variadas.

Nesse sentido, o uso de aparelhos celulares tem ganhado relevância. Com a queda dos preços ao longo das últimas décadas, a adoção deles pela população mundial se intensificou, chegando aos 93% segundo [relatório do World Bank de 2014](http://data.worldbank.org/products/wdi). Já especificamente quanto aos smartphones, sua adoção em 2015 teria chegado a 43%, segundo [pesquisa da Pew Research Center](http://www.pewglobal.org/2016/02/22/smartphone-ownership-and-internet-usage-continues-to-climb-in-emerging-economies/). Os variados sensores que eles possuem, e a portabilidade que permitem, criaram um universo de possibilidades de aplicação em diversas áreas, incluindo a coleta de dados por cidadãos buscando contribuir com suas comunidades [@mobility2016;@sensr1].

Aproximando do contexto brasileiro, a [TIC domicílio de 2015](http://cetic.br/pesquisa/domicilios/indicadores) revelou que 93% dos domicílios têm telefone celular e 84% dos indivíduos possuem celular. Isso é ainda mais intenso quando se observa o público jovem: 91% daqueles com 16 a 24 anos possuem celular. No mesmo sentido, segundo o estudo [Juventude Conectada de 2016](http://fundacaotelefonica.org.br/wp-content/uploads/pdfs/Juventude-Conectada-2016.pdf), 85% dos jovens usuários de internet usam o celular como principal dispositivo de acesso à internet.

@partsens2006 discute o potencial uso dos celulares e da internet para o que chama de "participatory sensing". Nessa visão os cidadãos, através de seus celulares, funcionariam como uma rede de sensores monitorando diversos aspectos de uma cidade, seja coletando dados automaticamente pelos sensores do aparelho ou solicitando aos usuários o preenchimento de questionários, a captura de fotos etc. Essa abordagem tem sido comumente adotada por propostas relacionadas à ideia de Cidades Inteligentes, onde os dados coletados seriam utilizados por gestores públicos ou empresas para resolver problemas ou planejar o espaço urbano.

Os celulares também têm sido aplicados em respostas a desastres e emergências. Sua flexibilidade, portabilidade e disseminação tem sido pontos chave para a coleta de informações em tempo real auxiliando nessas situações de crise [@ushahidi2012;@disaster].

O uso de celulares para a coleta de dados também despertou interesse para fins de ciência cidadã [@citisci2009]. Nesse contexto as campanhas de coleta de dados são criadas por cientistas que pedem ao público em geral que os ajudem, encaminhando informações que são então usadas em pesquisas científicas.

Um outro uso encontrado para a coleta de dados por cidadãos ocorre em campanhas criadas por organizações que buscam monitorar alguma causa pela qual advogam, como a qualidade do ar ou da água [@sensr1].

Devido aos diferentes tipos de enfoque para o uso de celulares na coleta de dados, também variam os requisitos e as características dos aplicativos usados. Quando se espera que a coleta de dados seja feita por um governo, empresa ou grupo de pesquisa pode ser aceitável que a ferramenta exija alguma habilidade com programação. Por outro lado, quando falamos do uso de uma ferramenta por um grupo engajado de cidadãos ou uma organização que faz advocacy, a facilidade para criação de campanhas pode ser um ponto fundamental para a sua adoção [@sensr1;@mocomapps].

Na literatura pesquisada, a maioria das ferramentas para coleta cidadã de dados encontradas não apresentam flexibilidade de escolha sobre quais dados serão coletados, possuem uma interface muito complexa para um não especialista, ou requerem um esforço de programação para adaptação da ferramenta a cada campanha. Essa crítica também é feita pelos autores do MoCoMapps e Sensr [@mocomapps;@sensr1].

No caso do MoCoMapps se trata de uma ferramenta para mapeamento de pontos de interesse de forma colaborativa, mas não para a coleta de dados numéricos em si. Dessa forma a ferramenta não se propõe a gerar relatórios ou análises das informações coletadas.

O Sensr é uma ferramenta que se propõe a permitir coleta cidadã de dados e análise dos mesmos. Mas aparentemente o projeto está inativo, suporta apenas smartphones iPhone, a exibição dos dados coletados é apenas em tabela, e o código fonte do projeto não está disponível.

Nesse sentido, não foram encontradas ferramentas voltadas a proporcionar: facilidade para a criação de campanhas de coleta de dados por cidadãos não especialistas; flexibilidade para que os criadores das campanhas escolham quais dados desejariam coletar; orientação no processo de criação da campanha, coleta, análise e uso dos dados; e, principalmente a consolidação de todos esses passos do processo em uma única plataforma.

Metodologia
===========

A metodologia adotada por esse trabalho segue a linha da Pesquisa Ação (PA). Esta, segundo @pesqacao, é "um tipo de pesquisa social com base empírica que é concebida e realizada em estreita associação com uma ação ou com a resolução de um problema coletivo e no qual os pesquisadores e os participantes representativos da situação ou do problema estão envolvidos de modo cooperativo ou participativo".

Nesse sentido, a PA valoriza a discussão e argumentação como forma de construção do conhecimento e, apesar de reconhecer a importância de estudos quantitativos, afirma que nem sempre eles são a forma adequada de se abordar uma questão. A lógica formal, apesar de rigorosa, não consegue capturar toda a realidade e muitas vezes faz simplificações artificiais que não ajudam a resolver os problemas estudados. A PA, por sua vez, se coloca como uma ferramenta de estudo para situações de difícil repetibilidade, onde se compreende que cada caso é único, mas que através deles há lições a serem aprendidas, buscando-se assim contribuir com o conhecimento teórico relacionado.

Tendo isso em vista, a escolha da PA como metodologia para este trabalho se deu por diversos motivos, entre eles: o estudo se desenvolveu em um ambiente de variáveis não controladas, influenciadas simultaneamente por diversos atores; os resultados, muitas vezes apenas mensuráveis a longo prazo, são consequência de múltiplas causas; a questão abordada envolveu a dinâmica de pequenos e médios grupos; houve participação dos pesquisadores e grupos locais na elaboração das ações e reflexões; além do fato de que a própria metodologia estudada se aproxima dos princípios e práticas da pesquisa-ação, ao propor que os próprios envolvidos no contexto sejam pesquisadores de suas realidades.

Acompanhamento e Atividades Desenvolvidas
-----------------------------------------

A participação dos pesquisadores nas atividades dos grupos parceiros se deu através de acompanhamento remoto (através de conversas pela internet) e encontros presenciais. A documentação e aprofundamento das discussões foi feita através de um grupo focal, 27 entrevistas (totalizando 17h de gravações), múltiplos encontros de reflexão e um diário de atividades.

Foram feitas duas visitas a Santarém e uma a Ponta de Pedras (cidades do estado do Pará, Brasil, onde os estudos de caso ocorreram). Na primeira visita (setembro de 2016) foi feito um grupo focal que envolveu cerca de 30 pessoas, entre professores e estudantes, tendo duração de cerca de 3h.

Na segunda visita (novembro de 2016) foram realizadas entrevistas com diversas pessoas envolvidas nas campanhas, algumas delas representando instituições envolvidas em sua implantação e articulação. Foram 18 entrevistas em Santarém, 7 em Ponta de Pedras e 2 em Belém. Em Santarém participaram das entrevistas pessoas de 5 escolas estaduais, em Ponta de Pedra uma escola estadual e uma municipal. A seguir estão descritos os perfis das pessoas entrevistadas:

**Santarém:**

-   1 Representante do Ministério Público (parceiro do movimento)
-   1 Representante da Secretaria Estadual de Educação
-   1 Representante em Conselho Escolar
-   1 Coordenadora pedagógica de uma escola acompanhada
-   1 Servente (merendeira em uma escola acompanhada)
-   1 Professora e articuladora do movimento
-   2 Diretoras de escolas acompanhadas
-   3 Professores (envolvidos em maior ou menor grau na campanha)
-   7 Estudantes (envolvidos em maior ou menor grau na campanha)

**Ponta de Pedras:**

-   1 Representante do Ministério Público (articulador da campanha)
-   2 Gestoras de escolas acompanhadas
-   5 Estudantes (envolvidos em maior ou menor grau na campanha)

**Belém:**

-   1 Representante do Ministério Público (articulador das campanhas)

A escolha dos entrevistados foi feita buscando-se incluir a maior diversidade de pontos de vista possível.

Cogitou-se a aplicação de questionário para um grupo de alunos integrantes de uma campanha de coleta de dados, antes da participação na campanha e depois de alguns meses de coleta. O questionário seria usado para medir possíveis mudanças de percepção desses alunos quanto à sua efetividade na transformação da comunidade, e também compreensão e uso dados. Porém, isso não foi possível devido a dificuldades logísticas, curta duração da pesquisa e incertezas sobre o início das campanhas e quais seriam os envolvidos.

Ao todo o acompanhamento de Santarém durou cerca de 5 meses, enquanto o de Ponta de Pedras 3 meses.

Projeto Monitorando a Cidade
============================

O Monitorando a Cidade é uma plataforma e metodologia que possibilita a comunidades coletarem dados de maneira colaborativa para monitorar questões que considerem prioridades em suas cidades, usando tais informações para reivindicarem mudanças com seus governos locais, instituições e imprensa.

Usando uma simples plataforma online os grupos podem criar uma nova campanha de monitoramento, determinar a informação que desejam coletar, e compartilhar essa campanha com amigos e membros da comunidade. Usando o aplicativo para celular do Monitorando a Cidade os usuários podem enviar dados para uma campanha: imagens, localizações e respostas para as perguntas do questionário. Toda a informação enviada é agregada na plataforma online e representada através de gráficos e outras visualizações simples que podem ser analisadas pelos colaboradores e compartilhadas com as organizações locais, oficiais públicos ou outros atores buscando assim discutir a questão abordada.

Desenvolvimento
---------------

Desde o fim de 2013, o Monitorando tem sido desenvolvido pelo Center for Civic Media (CCM) em colaboração com parceiros brasileiros. O projeto foi inspirado inicialmente por diversas áreas de trabalho, incluindo o monitoramento de eleições ao redor do mundo e a popularização do uso de ferramentas baratas de monitoramento ambiental por cidadãos. Interessado em utilizar as poderosas ferramentas disponíveis em smartphones, como câmeras e GPS, já disponíveis para muitas pessoas, o time começou a explorar o potencial da coleta de dados por cidadãos para monitorar o progresso das promessas de campanha de governantes e encorajar o controle social.

Revendo as ferramentas existentes para coleta de dados, o time identificou um número de lacunas. A maioria das ferramentas encontradas assumia um mínimo de conhecimento técnico e familiaridade com estruturas de dados, o que as tornava inacessível para a maioria das pessoas. As interfaces eram complexas, incluíam opções avançadas de direcionamento de questionário e usavam linguajar técnico. Algumas ferramentas também requeriam configuração manual dos componentes, o que impediu o uso das mesmas. O time do MIT notou, principalmente, a ausência de uma estruturação nas ferramentas que ajudasse a guiar a construção do processo de coleta dos dados.

Metodologia das Oficinas
------------------------

Paralelamente ao desenvolvimento da plataforma, uma metodologia foi desenvolvida para auxiliar no uso da mesma. A própria plataforma, durante a criação da campanha, já busca induzir a reflexão sobre a estrutura e objetivos da campanha. Porém, a metodologia a complementa, reforçando o uso dela da maneira que foi imaginada pelo CCM, buscando a construção de campanhas colaborativas para a resolução dos problemas. O desenho da metodologia foi feito a partir do conhecimento acumulado através de oficinas realizadas e sugestões fornecidas por parceiros com experiência em organização de mobilizações.

Alguns aspectos principais da metodologia são:

-   Identificação dos problemas e criação de campanhas por grupos (ao invés de indivíduos)
-   Identificação das questões que podem ser monitoradas através de celulares (enquanto a existência de postes de luz em uma determinada área pode ser documentada com GPS e fotos, a qualidade da educação em uma escola pode ser algo bem mais difícil de medir)
-   Busca de oportunidades para diálogo e soluções colaborativas (ao invés de puro antagonismo e denuncismo através dos dados)
-   Reflexão sobre os tipos de dados coletados, usando respostas de texto livre apenas quando necessário
-   Iteração conforme necessário e modificação da estrutura do questionário baseado na experiência adquirida em campo
-   Incentivo à reflexão sobre o que fazer com os dados coletados, de forma a buscar uma solução para a questão abordada

A metodologia para a aplicação de uma oficina ou criação de nova campanha com o Monitorando está documentada no [Guia de Facilitação](http://monitor.promisetracker.org/pt-BR/guides), disponível no site da plataforma. Este foi desenvolvido para compartilhar a metodologia usada para introduzir grupos à ferramenta e guiá-los através do processo de desenho e implementação das campanhas. Esta metodologia inclui sugestões que reforçam o caráter colaborativo e reflexivo do projeto, induzindo a um tipo de desenho de campanha. Contudo, a plataforma busca ser flexível para ser utilizada de formas diferentes daquela para a qual foi concebida inicialmente, dado que é uma ferramenta livre.

![
**Fases da Metodologia**
-
*Fonte: autoria própria*
](./media/image16.jpg){width="6.5in" height="3.6527777777777777in"}

### Identificando prioridades

O primeiro passo é a discussão sobre os principais desafios enfrentados pelos participantes em suas comunidades. Recomenda-se que os desafios escolhidos sejam relacionados à infraestrutura ou serviços, de forma que seja tangível documentá-los através de celulares, com fotos ou observando-os e fazendo anotações.

Apesar de muitos problemas diferentes poderem aparecer nessa discussão inicial, é recomendado que sejam escolhidos apenas um ou dois, aqueles que forem considerados os mais relevantes pelos participantes. Tendo em vista que o sucesso da campanha dependerá do esforço dos voluntários em coletar dados e usá-los para buscar soluções aos problemas, é fundamental que os participantes abordem temas importantes para eles, e que os afetam no dia a dia.

### Criando indicadores

O segundo passo do processo orienta os participantes a definirem indicadores, ou tipos de dados que possam ser coletados, para auxiliar a compreender e mapear o problema escolhido. Os indicadores serão as perguntas colocados no questionário, ou dados, com os quais as pessoas serão convidadas a contribuir quando participando da campanha.

Como existem muitos tipos de informação que podem ser coletados sobre um problema, a escolha deles deve considerar tanto a facilidade de coleta através de um celular, como a capacidade de usá-los de forma prática para a resolução do problema.

Esse passo levaria então os participantes a refletirem sobre as seguintes questões:

-   Quais informações precisamos para explicar o problema com clareza?
-   Quem tem poder para mudar essa questão e que informações essas pessoas precisam para fazê-lo?

Revendo os dados que podem ser coletados pela plataforma (imagem, localização, data, questão de múltipla escolha, texto livre), os participantes rascunham o questionário que eles desejam que os respondentes preencham toda vez que coletarem dados para a campanha.

O grupo segue então para a plataforma, criando a campanha e incluindo informações levantadas nesses passos iniciais, como o assunto abordado, o público alvo dos dados a serem coletados e o questionário que guiará a coleta dos dados.

### Coleta dos dados

Uma vez com a campanha estruturada, os participantes iniciam a coleta dos dados. Inicialmente a campanha é lançada em modo "teste", permitindo aos participantes experimentarem o aplicativo para celular, praticarem a coleta dos dados e avaliarem os indicadores escolhidos. O grupo é encorajado a ir para campo e testar o questionário construído. Após essa fase de experimentação, o grupo se reúne para discutir as seguintes questões:

-   Existem no questionário perguntas que não fazem sentido?
-   Há outras perguntas que gostariam de incluir?

O grupo então verifica o mapa e visualizações com os dados de teste coletados, permitindo assim entenderem como poderão visualizar os dados ao longo da campanha. Baseado nessa discussão e reflexão, o questionário poderá ser modificado e relançado. O grupo poderá repetir esse processo de teste e reflexão várias vezes até sentirem confiança na estrutura da campanha. Uma vez definida, os dados de teste são apagados e começa a coleta real: os participantes, individualmente ou em pares, percorrem a comunidade coletando os dados.

### Analisando os resultados e discutindo a estratégia

Retornando da coleta em campo, os participantes se reúnem para revisar e discutir o que foi coletado até então. A conversa inicia comentando sobre como foi, de maneira geral, o processo de coleta. Se houve, por exemplo, algo que surpreendeu os participantes.

Analisando em conjunto as visualizações da página da campanha, o grupo discute, para cada pergunta do questionário, o que conseguem aprender a partir dos dados coletados até então. Tendo em vista que essa é uma coleta inicial, refletem se os indícios vão no sentido que pensaram inicialmente, e se há algum ponto importante faltando.

O passo final é discutir a estratégia de como encaminhar a campanha. São feitas perguntas como:

-   Quantos dados ainda precisamos coletar para sentir que a questão está bem representada?
-   Quem queremos que veja esses dados, além das pessoas já identificadas no começo do planejamento da campanha?
-   Com quem gostaríamos de nos reunir para discutir esses resultados?
-   Quando o grupo se reunirá novamente para planejar os próximos passos?

Fase I
------

Após um ano de desenvolvimento colaborativo com membros da Rede Nossa São Paulo e outros parceiros no Brasil, o CCM lançou a primeira versão pública da ferramenta em março de 2015. Nos meses seguintes o time começou o processo de divulgação com grupos da sociedade civil no mesmo país, realizando oficinas com membros da Rede Brasileira para Cidades Sustentáveis, buscando introduzi-los à ferramenta e lançar campanhas piloto para coleta de dados em suas cidades.

Reconhecendo que a plataforma seria mais efetiva se usada para complementar mobilizações já existentes, o time do MIT buscou se aproximar de organizações que possuíam redes de cidadãos, pontos principais a serem abordados por eles e potencial para auxiliá-los no processo. Ao longo de 2015 o time colaborou com grupos em 9 cidades brasileiras, realizando 16 oficinas. Durante essas oficinas, participantes experimentaram a ferramenta para monitorar vários temas, entre eles: acessibilidade do transporte público, manutenção de praças e coleta de lixo.

Fase II
-------

Em maio de 2016 é iniciada a segunda fase piloto, buscando observar processos e resultados do uso do Monitorando a Cidade através de uma parceria entre o CCM, o Instituto Humanitas360 e o Colaboratório de Desenvolvimento e Participação da Universidade de São Paulo (Colab-USP). Antes de ampliar o uso e dedicar mais esforços no desenvolvimento da plataforma, o time procurou melhor entender como esta vem sendo usada e quais são seus resultados.

Ao longo de 6 meses do ano de 2016, os parceiros trabalharam com grupos no estado do Pará, no norte do Brasil, acompanhando campanhas que fizeram uso do Monitorando e documentando como essas campanhas foram implementadas. O time esteve interessado em explorar se o uso da ferramenta afetou a concepção dos participantes sobre o uso de dados como um potencializador para a defesa de suas causas, se os grupos foram capazes de construir ou consolidar novos relacionamentos através do monitoramento, e se a coleta de dados impactou o senso de eficácia dos participantes como mobilizadores de suas causas (se passaram e se sentir mais capazes de alcançá-las).

Enquanto na primeira fase a plataforma foi apresentada, através de oficinas, a diversos grupos, que por sua vez escolheram abordar várias temáticas, para a segunda fase optou-se por acompanhar grupos que já estavam fazendo uso da ferramenta. Esses dois grupos acompanhados utilizaram a plataforma para o monitoramento da merenda escolar.

Estudos de Caso
===============

Nas seções a seguir são contextualizados e descritos os estudos de caso acompanhados neste trabalho, ocorridos nas cidades de Santarém e Ponta de Pedras, no Estado do Pará. Os dois casos envolveram o uso da plataforma Monitorando, principalmente por estudantes de escolas públicas, para o monitoramento da merenda servida em suas escolas.

Em ambos os estudos de caso dois atores locais foram bastante significativos para o surgimento e desenvolvimento das campanhas de monitoramento:

O primeiro sendo o **[Observatório Social de Belém](http://www.osbelem.org) (OSB),** Organização da Sociedade Civil de Interesse Público que integra a rede de [Observatórios Sociais do Brasil](http://osbrasil.org.br). O OSB possui cerca de 40 associados e busca fomentar o engajamento da população, ampliando o acompanhamento das políticas públicas, o controle social e fortalecimento da cidadania. Suas ações costumam ser voltadas para a educação, como palestras, painéis, divulgação de material pela internet e conversas com a imprensa e o poder público.

E o segundo ator sendo o **[Ministério Público do Estado do Pará](http://www.mppa.mp.br) (MP)**. “O Ministério Público brasileiro é uma instituição pública permanente e independente, que não pertence ao Poder Judiciário nem aos Poderes Executivo, Legislativo ou ao Tribunal de Contas. Tem orçamento, carreira e administração próprios. No Brasil, o Ministério Público está dividido entre o Ministério Público da União (MPU) e o Ministério Público dos Estados (MPE). É uma instituição que atua na defesa dos interesses sociais e indisponíveis, como o direito à vida, à saúde, à moradia, à liberdade, à educação, ao trabalho, à cidadania, dentre outros. Fiscal das leis, atua, ainda, na defesa da ordem jurídica e do regime democrático. Também defende o patrimônio cultural, o meio ambiente, os direitos e interesses da coletividade, como os das comunidades indígenas, da família, da criança, do adolescente e do idoso” [@oqehmp].

Além destes, que são comuns aos dois casos estudados, outros atores locais foram relevantes para as campanhas. Em Santarém, destacamos o Projeto SOL e o Movimento Pacto Estudantil pela Educação no Pará (MPEPEP) coordenaram o planejamento e desenvolvimento da ação, realizada em conjunto com os estudantes das escolas locais. Já em Ponta de Pedras, houve participação dos estudantes de escolas públicas no processo de coleta de dados, acompanhados pelos gestores escolares.

A Merenda Escolar
-----------------

Uma vez que ambos os estudos de caso abordaram o tema da merenda escolar, julga-se importante contextualizá-lo, buscando contribuir para a compreensão dos mesmos.

Segundo [@food18], o provimento da merenda escolar e o papel dela dentro de uma comunidade, varia muito entre os países. Em regiões onde a subnutrição é frequente, a merenda pode ser a refeição mais importante das crianças, sendo fundamental no desenvolvimento tanto físico como escolar. Em outras realidades ela pode servir de momento para discussão de hábitos alimentares, ajudando como ferramenta para políticas públicas, por exemplo, contra a obesidade.

Quanto ao financiamento, pode ser integralmente coberto pelo governo, parcialmente coberto, com fornecimento de auxílios apenas para alguns casos, ou ainda sem nenhum tipo de auxílio ou subsídio público.

Quanto à produção, na maioria dos casos ou ela ocorre em cozinhas nas próprias escolas, ou são contratadas empresas que distribuem os alimentos prontos para o consumo.

Em alguns casos há políticas de valorização dos produtores locais e da cultura alimentar da região, em outros, esse tipo de distinção chega a ser proibida.

### Brasil

No Brasil, o principal programa referente à merenda é o Programa Nacional de Alimentação Escolar (PNEA), que atende a todos os alunos matriculados na rede pública de educação básica. Originado a partir de outros programas que remontam à década de 40, teve sua estrutura alterada ao longo dos anos e foi apenas em 1979 que passou a receber o nome de merenda escolar [@fndehist].

Uma das mudanças sofrida pelo programa foi a descentralização. Até 1994, os cardápios, a aquisição, a distribuição e o controle de qualidade dos alimentos era feita por um órgão federal. A partir de então, os recursos passaram a ser repassados para os municípios, ou para o estado quando o município não tivesse condições de assumir o provimento da merenda.

Em 2000 foram instituídos os Conselhos de Alimentação Escolar (CAE), órgãos deliberativos e fiscalizadores da execução do programa, formados por representantes de entidades civis organizadas, trabalhadores da educação, discentes, pais de alunos e representantes do poder Executivo.

Em 2001 foi estipulada a "obrigatoriedade de que 70% dos recursos transferidos pelo governo federal [fossem] aplicados exclusivamente em produtos básicos e o respeito aos hábitos alimentares regionais e à vocação agrícola do município, fomentando o desenvolvimento da economia local".

Em 2006 passou a ser exigida a presença de nutricionista como responsável técnico pela merenda servida. E em 2009 o PNAE foi estendido a toda a rede pública de educação básica, passando a exigir que 30% do repasse dos recursos fosse investido na aquisição de produtos da agricultura familiar.

Atualmente, os repasses feitos pelo governo federal para cada município ou estado são baseados nos dados do censo do ano anterior. Os valores por dia letivo para cada aluno são definidos de acordo com a etapa e modalidade de ensino. Para alunos do ensino fundamental, médio e educação de jovens e adultos o valor em 2015 foi de R$0,30. Quando necessário, é esperado que o estado complemente o valor com recurso próprio. Segundo estimativas do governo, o programa atendeu em 2014 cerca de 42 milhões de alunos, com um investimento de R$3,6 bilhões [@fndeapre;@cartilhamerenda].

### Desafios

O provimento da merenda é uma questão complexa uma vez que envolve diversos atores, restrições e especificidades locais. Dessa forma, há possibilidade de falhas em várias etapas do processo. Muitas delas já são conhecidas pelos órgãos de controle e diversas foram ressaltadas ao longo das entrevistas com os participantes das campanhas de monitoramento.

Na etapa de aquisição dos alimentos são encontrados problemas como: ausência de gêneros alimentícios oriundos da agricultura familiar, presença de alimentos proibidos pela legislação do PNAE (como refrigerantes, refrescos artificiais e enlatados), fraudes no processo licitatório, desacordo entre os produtos adquiridos e o cardápio elaborado por nutricionista.

Uma vez adquiridos podem ocorrer problemas na distribuição e armazenamento dos alimentos. Falhas no processo de recebimento dos produtos, por exemplo, podem permitir a aceitação de ingredientes de qualidade inferior à adquirida. Por se tratarem de alimentos, é necessário um cuidado especial no armazenamento, refrigerando-os quando necessário, e buscando evitar pragas, umidade etc. Porém, muitas escolas não dispõem de espaços e equipamentos adequados para este tipo de armazenamento.

Segundo entrevistas, falhas na distribuição dos alimentos frequentemente fazem com que os próprios gestores das escolas tenham que buscar os alimentos em espaços onde são estocados pela prefeitura.

Já a etapa de preparação dos alimentos pode sofrer com a falta de recursos humanos ou de capacitação para a preparação das refeições. A falta de ingredientes pode levar ao descumprimento do cardápio elaborado por nutricionista, ou mesmo ao não provimento da merenda. O descumprimento do cardápio foi reclamação recorrente entre entrevistados, e a ausência de ingredientes, não raramente, leva professores e gestores das escolas a complementarem a merenda com recursos próprios.

Por fim podem ocorrer falhas no controle social por parte dos CAEs: como composição do mesmo em desacordo com a legislação, não cumprimento do planejamento proposto ou, como colocado por vários entrevistados, a atuação insatisfatória (quase inexistente) do CAE.

Estudo de Caso I: Santarém
--------------------------

### Contexto

Com cerca de 300 mil habitantes e 23 mil km², Santarém é o terceiro município mais populoso do estado do Pará, sendo o principal centro urbano, financeiro, comercial e cultural do oeste do estado. Situa-se na confluência dos rios Tapajós e Amazonas e está localizado a cerca de 800 km das metrópoles brasileiras da Amazônia (Manaus e Belém) [@wikisant;@prefsant].



![
**Localização de Santarém no Brasil**
-
*Fonte: [Wikipedia](https://pt.wikipedia.org/wiki/Santar%C3%A9m_(Par%C3%A1))*
](./media/image17.png){width="3.3489588801399823in" height="3.3328576115485564in"}



A cidade possui cerca de 38 escolas estaduais, totalizando aproximadamente 44 mil alunos matriculados (incluindo jovens e adultos) [@seducsant]. Na cidade, a merenda das escolas estaduais e municipais é municipalizada. Logo, o estado repassa para a prefeitura a verba que recebeu do governo federal para o suprimento da merenda, e a Secretaria Municipal de Educação (SEMED) se torna responsável pela aquisição dos alimentos.

### Atores Principais

Fundado em 2001, o **Projeto SOL** começou organizando trabalhos voluntários junto às famílias produtoras de carvão da cidade. Com o tempo o projeto passou a atuar em diversas áreas, incluindo educação fiscal, tema sobre o qual chegou a criar uma peça de teatro que ganhou o Prêmio Nacional de Educação Fiscal de 2014 [@projsol]. O projeto busca dar aos jovens uma educação cidadã através de diversas iniciativas, entre elas a Prefeitura Mirim. Nela os estudantes se organizam de forma democrática e elegem seus próprios representantes para diversas atividades.

Em 2011 o OSB foi a Santarém para ajudar na criação de um Observatório Social na cidade e, devido ao envolvimento do Projeto SOL com educação fiscal, este foi também convidado a participar, surgindo então a parceria entre os dois grupos.

Tendo como berço o ambiente já bastante politicamente ativo da Prefeitura Mirim, nasceu em 27 de outubro de 2015 o **Movimento Pacto Estudantil pela Educação no Pará** (MPEPEP). Indignados com os problemas da escola, os jovens do projeto resolveram convidar alunos de 14 escolas, que até então estavam se mobilizando isoladamente, para se mobilizarem juntos. Em uma marcha pela cidade, 12 escolas públicas levaram demandas ao MP iniciando um diálogo entre os dois. O movimento foi composto e liderado por representantes de várias escolas, contando com apoio de professores e gestores, abrangendo alunos na faixa etária entre 12 e 21 anos, de vários bairros da cidade. Dentre os principais temas abordados estão: problemas com a merenda e a reforma das escolas, falta de segurança e o não funcionamento de espaços pedagógicos [@mpepep].

### Campanha

Iniciando um trabalho conjunto com o MP, a promotora pediu para que os estudantes priorizassem suas demandas para que juntos pudessem começar a buscar e encaminhar soluções. Nesse sentido, solicitou aos estudantes que montassem dossiês sobre os problemas enfrentados: reunissem documentos, tirassem fotos etc.

Dessa forma, os estudantes de uma escola chegam a fazer e aplicar um questionário sobre o problema de segurança. Os dados foram tabulados, gráficos foram feitos e apresentados em reunião com a promotora, Polícia Militar, Polícia Civil, Conselho Tutelar e outros grupos. A promotora pediu então para que o questionário fosse aplicado nas demais escolas.

Quando começaram a discutir a questão da merenda, em fevereiro, o MP percebeu que não havia dados suficientes para basear uma ação mais concreta. Quando o MP realizava visitas às escolas havia merenda, mas não havia condições de realizar visitas diárias. Nesse sentido o OSB e o MPEPEP decidiram usar o Monitorando para acompanhar a merenda das escolas. O OSB, utilizando-se da experiência adquirida na campanha piloto sobre a merenda em Belém, criou a campanha na plataforma. Para ela adotou-se o nome de "Égua da Merenda, João", buscando ao mesmo tempo chamar a atenção das pessoas em um linguajar próprio da região, e homenagear um pesquisador membro do OSB, assassinado em fevereiro de 2016. O questionário da campanha foi montado a partir de um diálogo entre o OSB e o MPEPEP, procurando levantar as seguintes informações:

1.  Dia da coleta dos dados
2.  Local da coleta (obtida automaticamente via GPS do aparelho)
3.  Nome da escola (múltipla escolha)
4.  Se houve merenda no dia (sim ou não)
5.  Se o cardápio da merenda foi divulgado (sim ou não)
6.  Uma foto do cardápio
7.  A descrição da comida servida
8.  Motivo para uma possível falta de merenda
9.  Se foi servido algo para beber (sim ou não)
10. Descrição do que foi servido para beber
11. Horário em que a merenda foi ou deveria ter sido servida (múltipla escolha)
12. Uma foto da merenda servida
13. Outra possível foto da merenda
14. Quantidade percebida de sal na comida (múltipla escolha)
15. Nota de avaliação geral da merenda (de 1 a 5)

Para preparar os estudantes para a campanha da merenda foram feitas diversas formações. Uma buscou mostrar a eles que a merenda é um direito e deve seguir legislação específica. Outra, sobre fotografia, buscou dar orientações básicas sobre como tirar as fotos para a campanha sem expor as demais pessoas envolvidas.

No começo de junho de 2016 os alunos de 12 escolas estaduais de Santarém, organizados em comissões, iniciaram a coleta dos dados. Para tal, nos dias em que tivessem aula, eles deveriam utilizar o aplicativo no celular preenchendo o questionário da campanha.

No dia 6 de junho de 2016 houve uma [visita do MPE a uma escola](http://g1.globo.com/pa/santarem-regiao/bom-dia-santarem/videos/t/edicoes/v/mpe-visita-escolas-de-santarem-para-vistoriar-qualidade-da-merenda-dos-alunos/5076292/) onde os dados seriam coletados. A visita se deu como forma de apoiar o início do monitoramento pelos alunos e, no mesmo dia, a coleta de dados utilizando o Monitorando foi feita em múltiplas escolas.

No mesmo mês foi feita uma semana intensa de monitoramento buscando dar visibilidade aos problemas da merenda e sensibilizar a sociedade sobre a questão. Os estudantes fizeram desenhos mostrando a merenda que tinham e a que gostariam de ter, gravaram vídeos registrando a merenda servida e entrevistas com as merendeiras, compuseram paródias e poesias sobre o tema, registraram fotos e utilizaram o aplicativo para o monitoramento. A semana terminou com uma [marcha](http://g1.globo.com/pa/santarem-regiao/bom-dia-santarem/videos/v/em-santarem-alunos-da-rede-estadual-de-ensino-protestam-por-merenda-escolar/5111340/), no dia 21, aniversário da cidade, até o um local de grande movimento onde todo o material foi apresentado.

Mais à frente os estudantes descobriram que a SEMED havia marcado um evento de degustação da merenda, para o qual eles não foram convidados. Eles pediram então, através do MP, para que pudessem participar, e foram atendidos. No dia 29 de junho de 2016 ocorre o evento de “[degustação da merenda](http://www.mppa.mp.br/index.php?action=Menu.interna&id=6850&class=N)”, além de possibilitar aos alunos degustar a merenda que deveria estar sendo servida em suas escolas, também serviu para informá-los sobre as etapas da merenda, desde a aquisição, distribuição, cardápio e modo de fazer, para que pudessem fiscalizá-la melhor.

No dia 13 de setembro os pesquisadores do CCM e do Colab-USP [foram para Santarém](http://colab.each.usp.br/?p=462) e encontraram pessoalmente pela primeira vez com as pessoas integrantes do MPEPEP, responsáveis pela organização da campanha e coleta dos dados. Ao longo de uma tarde os alunos, professores e pesquisadores discutiram diversas questões relacionadas à merenda, organização do grupo, dificuldades técnicas com a ferramenta, possíveis melhorias no questionário utilizado na coleta dos dados. Quanto ao questionário decidiu-se por duas alterações:

-   Remoção da pergunta pedindo localização via GPS. Esta estava gerando dados imprecisos e não era necessária, uma vez que o local ficava implícito a partir do nome da escola escolhido na questão 3.
-   Alteração da redação da pergunta pedindo uma foto do cardápio. A redação inicial (“Se houver, faça uma foto do cardápio divulgado”) estava confundindo os alunos, fazendo com que alguns tirassem fotos dos alimentos, quando o desejado eram fotos do documento com a listagem dos alimentos a serem servidos. A pergunta foi alterada para uma múltipla escolha, questionando se o cardápio foi ou não cumprido, ou se nem foi divulgado.

A estratégia da organização da campanha era continuar expandindo-a para que mais pessoas participassem do monitoramento. Porém, nesse encontro com os pesquisadores, foi discutido que um aumento no número de participantes poderia aumentar a complexidade da análise dos dados. Nesse sentido a campanha acabou não ampliando significativamente o número de participantes nos meses seguintes.

Dos dias 6 ao 9 de novembro ocorreu a segunda visita de um dos pesquisadores do Colab-USP à cidade, com intenção de entrevistar envolvidos na campanha e aprender com eles sobre a experiência de uso do Monitorando. Essa visita foi um dos momentos chave para a coleta de boa parte das informações analisadas neste relatório.

No dia 11 de novembro foi feita, pela URE (Unidade Regional de Ensino, vinculada à Secretaria Estadual de Educação), uma capacitação com as merendeiras, um dos frutos da campanha, trazendo maior sensibilização sobre o tema.

### Dados coletados

Até o momento da sistematização dos resultados da coleta (19/12/2016), a campanha no Monitorando contabilizava 81 registros, coletados ao longo de cerca de 7 meses. Esses foram provenientes de 8 escolas, sendo que 4 delas enviaram pelo menos 8 registros. A seguir estão alguns exemplos dos gráficos e fotos dessa campanha.

Pode-se notar que o momento de maior atividade na coleta de dados foi no começo de junho, quando houve a semana de intensa mobilização.


![
**Número de registros coletados por dia.**
-
*Fonte: [Campanha Égua da Merenda João](http://monitor.promisetracker.org/pt-BR/campaigns/420/share)*
](./media/image4.png){width="6.5in" height="2.7083333333333335in"}

![
**Porcentagem de respostas para a pergunta do questionário “Hoje teve merenda?”**
-
*Fonte: [Campanha Égua da Merenda João](http://monitor.promisetracker.org/pt-BR/campaigns/420/share)*
](./media/image14.png){width="5.255208880139983in" height="3.5255260279965004in"}

![
**Fotos coletadas na campanha**
-
*Fonte: [Campanha Égua da Merenda João](http://monitor.promisetracker.org/pt-BR/campaigns/420/share)*
](./media/image11.png){width="6.5in" height="2.6944444444444446in"}


Estudo de Caso II: Ponta de Pedras
----------------------------------

Com cerca de 28 mil habitantes e 3,3 mil km², Ponta de Pedras é um município localizado na Ilha de Marajó, foz do rio Amazonas, há 44 km da capital do estado, Belém [@wikipp;@prefpp]. A cidade possui cerca de 5 escolas estaduais, totalizando aproximadamente 2400 alunos matriculados (incluindo jovens e adultos) [@seducpp]. A merenda tanto das escolas estaduais como municipais é municipalizada.

![
**Localização Ponta de Pedras no Brasil**
-
*Fonte: [Wikipedia](https://pt.wikipedia.org/wiki/Ponta_de_Pedras)*
](./media/image13.png){width="3.4768667979002625in" height="3.432292213473316in"}

Segundo o MP, desde 2015 vem sendo negociadas com a prefeitura melhorias para as merendas das escolas estaduais e municipais na cidade. Nesse sentido foram feitas recomendações à prefeitura, mas o resultado, avaliado por técnicos do MP, não foi satisfatório.

Como forma de auxiliar nesse controle, um dos técnicos do MP, membro do Observatório Social de Belém e que havia participado de oficina usando o Monitorando, sugeriu o uso da ferramenta. O promotor de justiça responsável pela cidade, vendo que a ferramenta permitiria fotos diárias da merenda por alunos, apoiou sua adoção. Com a participação dos próprios alunos no monitoramento da merenda, reduziria a necessidade do próprio promotor ir presencialmente às escolas, o que em um município de grande extensão como Ponta de Pedras é bastante significativo. Além disso, reduziria a chance de que a merenda fosse provida apenas nos dias em que o promotor fosse até uma escola fiscalizá-la.

Em agosto de 2016 foi então organizada, pelo MP, uma oficina para cerca de 20 estudantes de 3 escolas da cidade, ocorrendo na Câmara dos Vereadores e tendo dois objetivos principais: ensinar aos estudantes sobre a legislação que rege o provimento da merenda e sobre o uso do Monitorando para o monitoramento da merenda. Os estudantes participantes foram chamados pelas coordenações de cada escola, escolhidos por serem representantes de suas classes.

O aplicativo foi então instalado no celular dos jovens e configurado para coletar dados para a campanha já criada pelo MP. Esta se tratava de uma nova campanha no Monitorando, diferente da usada em Santarém, mas cujo formulário de coleta era praticamente igual. A única diferença sendo o campo para identificação da escola, que passou de múltipla escolha para texto livre, dando mais flexibilidade para aplicação da campanha em novas escolas.

Para coordenar a campanha foi criada uma comissão composta por gestores, professores, coordenadores pedagógicos, estudantes e membros do MP. Foi criado também um grupo no Whatsapp, que seria o canal principal para que os estudantes dialogassem com o MP ao longo da campanha.

No dia 10 de novembro ocorreu a visita de um dos pesquisadores do Colab-USP à cidade, com intenção de entrevistar envolvidos na campanha e aprender com eles sobre a experiência de uso do Monitorando. Essa visita foi um dos momentos chave para a coleta de boa parte das informações analisadas neste documento.

### Dados Coletados

Já sobre os dados coletados através do Monitorando em Ponta de Pedras, até o momento da sistematização para este documento (19/12/2016), a campanha contabilizava 14 registros, coletados ao longo de cerca de 1 mês. Esses foram provenientes de 2 escolas. A seguir estão alguns exemplos dos gráficos e fotos da campanha.

![
**Número de registros coletados por dia**
-
*Fonte: [Campanha Égua da Merenda João](http://monitor.promisetracker.org/data/534609)*
](./media/image15.png){width="6in"}

\newpage

![
**Porcentagem de respostas para a pergunta do questionário “Hoje teve merenda?”**
-
*Fonte: [Campanha Égua da Merenda João](http://monitor.promisetracker.org/data/534609)*
](./media/image18.png){width="4.1in"}

![
**Fotos coletadas na campanha**
-
*Fonte: [Campanha Égua da Merenda João](http://monitor.promisetracker.org/data/534609)*
](./media/image12.png){width="6in"}


Discussão
=========

Como descrito na seção Metodologia deste documento, ao longo do acompanhamento foram ouvidas pessoas que planejaram as campanhas, que as implantaram, que viram o produto das campanhas, além daquelas que se envolveram em mais de uma dessas etapas e tiveram uma visão mais completa do conjunto. Esta riqueza de olhares está sintetizada a seguir, em pontos principais de análise.

É importante ressaltar que em ambos os estudos de caso o uso da ferramenta se deu no ambiente escolar, que possui uma hierarquia, temporalidade e dinâmica bastante própria.

Indissociabilidade entre Monitorando e mobilizações
---------------------------------------------------

Em nenhum dos casos a plataforma foi adotada de maneira isolada, mas sim inserida em um processo maior (a campanha para o monitoramento da merenda), envolvendo diversos atores e pelo menos uma formação para os alunos que coletaram os dados. Além disso, para vários entrevistados, muitas vezes não existia clareza entre os dois elementos: aplicativo e mobilização eram uma coisa só.

Dessa forma, é difícil separar os efeitos da plataforma Monitorando dos da mobilização como um todo, mas esse tipo de sobreposição de fatores é algo quase inevitável quando estudamos processos sociais complexos no mundo real [@pesqacao].

Tendo em vista tais restrições, é importante reforçar que este trabalho não se propõe a estudar a plataforma de maneira isolada, mas sim como uma ferramenta de auxílio às mobilizações desenvolvidas por um grupo de atores.

Geral
-----

De forma geral os entrevistados se mostraram favoráveis às duas campanhas acompanhadas, mesmo que em alguns casos com algumas ressalvas ou frustrações. O principal ponto positivo colocado foi justamente a expectativa de que as campanhas trouxessem melhorias para a merenda servida nas escolas. Membros do MP afirmaram gostar da ferramenta por ser uma forma de coletar dados para basear sua ação.

Em Santarém vários entrevistados disseram que a campanha ajudou a chamar atenção para a merenda, gerando debate público sobre o tema e conscientizando a comunidade escolar sobre a importância da merenda e os problemas existentes. Em alguns casos o Monitorando foi especificamente citado por ajudar a divulgar as informações sobre o estado atual da merenda.

Entre as ressalvas e frustrações apontadas estão: falta de resposta por parte do MP em Ponta de Pedras e a necessidade de monitorar outros elementos além da merenda servida em Santarém.

Quanto ao primeiro ponto, segundo entrevistados, havia uma expectativa de que a merenda voltasse a ser servida assim que a falta dela fosse comunicada ao MP através do Monitorando, algo que, para a decepção de alguns envolvidos, não ocorreu.

Quanto ao segundo ponto, em Santarém foi apontada a necessidade de monitorar os alimentos que chegam à escola e não apenas o que é servido na merenda. Isso porque suspeitas poderiam ser levantadas contra as merendeiras, quando na realidade o problema estaria na distribuição dos alimentos e não no preparo. Além disso, foi afirmado que seria importante monitorar também o número de serventes nas escolas (que frequentemente é insuficiente) e a qualidade das cozinhas, fatores que também afetam o provimento da merenda, mas não estão sob o controle das merendeiras.

A estruturação das campanhas em cada uma das duas cidades teve diferenças significativas. Em Santarém a campanha foi coordenada por um movimento estudantil já bastante organizado, acostumado a realizar cobranças por melhorias nas escolas (inclusive usando fotos, questionários e dossiês) e que já atuava em parceria com o MP, tendo inclusive reuniões periódicas. Além disso, o tema da merenda já estava em pauta, sendo um dos 9 encaminhados ao MP em busca de melhorias. O Monitorando chega então para suprir uma demanda já na agenda do movimento: o monitoramento da merenda. A ferramenta serviu para aprimorar o modelo de mobilização de coleta de dados já realizado pelo grupo.

Já em Ponta de Pedras, apesar dos graves problemas na merenda, a iniciativa da criação da campanha de monitoramento parte do MP. A comissão criada para coordenar a campanha, apesar de envolver estudantes já engajados com outras causas, aparentemente não é um grupo coeso que já existia previamente e tinha experiência em campanhas de cobrança e coleta de dados.

Cabe notar também que, aparentemente, em nenhum dos dois casos foi adotada, de maneira completa, a metodologia inicialmente proposta para o uso do Monitorando. Em nenhum dos casos foram os próprios estudantes que criaram a campanha na plataforma, após um processo de discussão sobre o tema a ser monitorado, sobre quais dados precisariam ser coletados, o que seria feito com eles e com avaliações periódicas sobre o andamento da campanha. Apesar de Santarém ter se aproximado bastante dessa metodologia.

Era de se esperar que um maior envolvimento das pessoas no planejamento e criação da campanha influenciasse positivamente na apropriação da campanha por elas. Tal lógica parece ter valido nos casos acompanhados. Em Santarém o próprio movimento estudantil, no controle da campanha, tem usado e divulgado material coletado no monitoramento da merenda de diversas formas, assim como pensado em novos usos para o Monitorando. Em Ponta de Pedras o sentimento por parte dos alunos não parece ser o de apropriação da campanha ou do Monitorando, mas sim o de cumprir com uma proposta de campanha colocada pelo MP, na esperança de conseguirem melhorias na merenda.

No mesmo sentido, o nível de articulação e engajamento dos grupos envolvidos, além da forma como a campanha foi iniciada, parecem ter sido fatores importantes nos resultados das mesmas.

Além dos fatores descritos acima, outros que podem ter intensificado os resultados em Santarém quando comparados com Ponta de Pedras são: maior duração das campanhas e maior interação com os pesquisadores.

Quanto ao primeiro ponto, quando as entrevistas foram feitas, a campanha em Santarém estava com cerca de 5 meses, enquanto a de Ponta de Pedras estava com apenas 3 meses.

Quanto ao segundo ponto, os pesquisadores foram pessoalmente a Santarém em dois momentos, mas apenas uma a Ponta de Pedras. No caso de Santarém houve um acompanhamento remoto, que se intensificou após a primeira visita. Em Ponta de Pedras esse acompanhamento remoto só foi iniciado dois meses depois, com a primeira ida à cidade, e quando as entrevistas no local já haviam sido feitas.

Resultados para a Merenda
-------------------------

No mesmo sentido das diferenças descritas anteriormente, os dois casos também divergiram bastante quanto a melhorias diretas para a merenda servida nas escolas.

Em Santarém, segundo entrevistas, a direção das escolas ficou mais atenta ao recebimento dos alimentos, não aceitando mais quando estes estão próximos do fim do prazo de validade. Algumas merendeiras também passaram a ter mais cuidado no preparo das refeições, chegando a pedir luvas para a realização de seu trabalho. Antes havia um sentimento de resignação por parte da comunidade escolar quanto a ausência ou baixa qualidade da merenda. Agora, mais pessoas estão dispostas a cobrar por melhorias no provimento da merenda.

De maneira geral, apesar dos dados coletados através do Monitorando não terem sido amplamente divulgados ou utilizados pelo MP, a mera coleta deles pode ter contribuído para resultados positivos na merenda. Segundo entrevistas, a Secretaria de Educação, sentindo-se cobrada, estaria mais atenta à questão da merenda. Isso teria levado a melhorias nos alimentos distribuídos e menos atrasos na distribuição deles.

Apesar disso, ainda segundo entrevistas, já houve períodos no passado em que a merenda esteve melhor do que agora, com a campanha em andamento. E mesmo observando ao longo da duração da campanha, algumas pessoas afirmaram que no começo dela, quando estava mais ativa, a merenda teve uma melhora maior, que foi em parte se perdendo ao longo dos meses conforme a mobilização diminuiu. Algumas pessoas demonstraram certa frustração pela necessidade de constante cobrança quanto a merenda, que caso contrário voltaria a piorar.

No caso da escola que já possuía a merenda de melhor qualidade dentre as monitoradas, não observou-se melhorias significativas com a campanha. Por outro lado, uma escola que nunca havia tido merenda, ao começar a participar da campanha, chamou a atenção do MP. Após uma investigação foram reveladas as causas do problema e a merenda passou a ser servida.

Já na cidade de Ponta de Pedras, a maioria dos entrevistados afirmou não ter havido nenhuma melhoria na merenda, que estaria sem ser servida há meses. Alguns chegaram a apontar que no começo da campanha, quando o MP fez uma visita para apresentá-la, a merenda chegou a ser servida por algum tempo, mas depois voltou a faltar. O fato da merenda ter retornado justamente com a visita do MP foi visto por vários entrevistados como um efeito da tomada de conhecimento pela prefeitura de que a merenda estaria sendo monitorada naquela ocasião.

Na opinião do MP, a ausência de um resultado direto na merenda está relacionada ao fato da campanha ainda ser recente. Porém, as expectativas ainda são muito positivas, uma vez que o material coletado já está auxiliando a atuação do próprio MP.

Aprendizado sobre o Tema Monitorado
-----------------------------------

Como descrito anteriormente, a dinâmica de desenvolvimento das campanhas foi significativamente diferente da metodologia inicialmente pensada para o Monitorando, não tendo um envolvimento tão intenso dos participantes desde o início do processo e um ciclo bem definido de auto avaliação ao longo da campanha.

O fato das duas campanhas acompanhadas se proporem a monitorar um tema por um longo período de tempo também pode ter influenciado nas implementações. As campanhas piloto feitas com o Monitorando envolviam apenas um ou dois dias de monitoramento. Nesses casos, de campanhas curtas, talvez seja mais fácil que os coletores dos dados sejam as mesmas pessoas que fizeram o planejamento, e que haja uma auto avaliação logo ao final da coleta.

Aparentemente, a coleta e análise dos dados em si não contribuíram de maneira muito significativa para o aprendizado dos participantes sobre o tema monitorado. Tal fato pode estar relacionado com as diferenças na forma de implementar as campanhas, como descrito acima.

Por outro lado, as formações realizadas pelo MP e demais parceiros parecem ter sido bastante significativas nos dois casos acompanhados. Elas teriam sido fundamentais tanto em Santarém como Ponta de Pedras para esclarecer aos estudantes que a merenda é um direito deles, e que precisa ser servida segundo a legislação. Essa informação parece ter sido crucial para despertar nos estudantes o desejo de cobrar melhorias para a merenda. Nesse sentido, também os ajudou a perceber quando a legislação que rege a merenda é descumprida.

Em ambos os casos os estudantes parecem ter começado a valorizar mais a merenda. Alguns inclusive perdendo a vergonha de comê-la.

Em Ponta de Pedras a conscientização sobre a merenda parece ter ficado mais restrita àqueles que participaram da formação ou da comissão da campanha. Segundo entrevistas, os estudantes estão inclusive pesquisando por conta própria sobre o tema e enviando sugestões ao MP sobre melhorias para a merenda.

Em Santarém, como a mobilização foi maior e houve mais formações, a campanha parece ter conscientizado mais pessoas e em espaços mais diversos. Segundo entrevistas, gestores das escolas perceberam que precisam se dedicar mais no provimento da merenda.

Além das formações, a semana de mobilização realizada pelo movimento em Santarém também parece ter sido significativa para atrair, para a questão da merenda, a atenção de pessoas tanto dentro como fora da escola. Um entrevistado apontou que o fato dos estudantes fazerem desenhos sobre a merenda que tinham e a que queriam ter os ajudou a refletir sobre a questão. O mesmo aconteceu a estudantes não participantes da campanha ao verem, na hora do intervalo, outros estudantes tirando fotos da merenda e perguntarem sobre o que se tratava.

No caso de Santarém as formações também parecem ter contribuído para que os envolvidos aprendessem como cobrar melhorias para a merenda: quais são os órgãos responsáveis pelo provimento, fiscalização, etc.

Na mesma cidade a realização da campanha mostrou para a coordenação do movimento que seria importante monitorar não só a merenda servida nas escolas, mas também os alimentos que chegam até elas, uma vez que muitos dos problemas estão na distribuição desses alimentos. Esse seria um indicativo de que, através da campanha, o grupo passou a compreender melhor as causas dos problemas com a merenda da cidade.

Uso dos Dados Coletados
-----------------------

Os dados coletados através do Monitorando, aparentemente, foram vistos por poucas pessoas. Mesmo algumas pessoas da coordenação do movimento em Santarém só viram a página do Monitorando com os gráficos quando os pesquisadores a mostraram, no grupo focal.

Entre as hipóteses para tal fato está a dificuldade em acessar a página com as visualizações dos dados a partir do aplicativo, dificuldade para navegá-la, dificuldade para compreender os gráficos exibidos, desinteresse em vê-los, ou ainda não saber da possibilidade de ver os dados coletados.

Em Ponta de Pedras o último fator parece ter sido predominante uma vez que, como a campanha havia sido criada pelo MP, na visão dos estudantes caberia a este acompanhar os dados coletados e tomar providências quanto aos problemas na merenda.

Em Santarém, apesar do próprio MP da cidade não ter visto os dados coletados via Monitorando, houve resultados diretos para a merenda. Isso se deu possivelmente pelo simples fato dos atores envolvidos saberem que estavam sendo monitorados, ou pelas outras forma de pressão realizadas pelo movimento e MP mesmo sem o uso dos dados do Monitorando.

As pessoas que viram a página com as visualizações dos dados coletados tiveram diversas opiniões sobre ela. Entre elas: não consideraram que trouxe informações novas; mostrou que os problemas não eram só em uma escola; não esperava que tantas pessoas achassem a merenda ruim; achou que houve pouca participação na campanha; ficou espantado com os casos de falta de merenda; aprendeu que na grande maioria das escolas há merenda, o problema é a qualidade da mesma.

Aparentemente ninguém chegou a exportar os dados da campanha como planilha, apesar do MP de Santarém e algumas pessoas da coordenação do movimento terem demonstrado a intenção de gerar um relatório a partir do dados. Uma delas inclusive apontou que a funcionalidade de geração de relatório do Monitorando precisaria ser aprimorada.

Nesse sentido, algumas pessoas afirmaram que os dados do Monitorando serviriam para gerar um relatório, uma prova sobre a situação da merenda. Mas segundo entrevista, a maioria dos estudantes envolvidos na campanha em Santarém veem o Monitorando como mais uma forma de divulgar os problemas da merenda do que como uma prova deles. Alguns estudantes entrevistados demonstraram não saber bem o que exatamente fazer com esses dados coletados.

Ainda em Santarém, segundo entrevista, alguns estudantes chegaram a usar, em reportagens da mídia local, informações obtidas da página de gráficos do Monitorando. Os gráficos também foram usados para saber quais escolas não estavam coletando dados, permitindo cobrar os estudantes responsáveis.

Ainda segundo entrevista, os estudantes ficaram mais confortáveis em usar os dados depois que os gráficos da ferramenta passaram a ser em formato de barra e não mais de pizza, facilitando a compreensão.

Outro aspecto que pode ter afetado a compreensão e consequente utilização dos dados foi a falta, inicialmente, de um filtro por escola e por data na página de visualizações do Monitorando. Essas funcionalidades foram implementadas próximo ao segundo encontro (com 5 meses de campanha em Santarém). Sem elas estava difícil acompanhar a dinâmica de coleta dos dados em cada escola e compará-los com o todo.

Também sentiu-se falta de uma capacitação dos envolvidos na campanha para que conseguissem explorar a página com as visualizações dos dados, interpretar os gráficos e utilizar os filtros. Essa capacitação poderia ser importante para, além de reduzir a chance de interpretações equivocadas dos dados, auxiliar na desmistificação do processo de coleta e análise de dados, pontos que não pareceram claros para vários entrevistados.

Além do Monitorando, em Santarém, outros canais para coleta e divulgação dos dados também foram bastante usados. Fotos da merenda e breves descrições do que foi servido eram colocadas na página do MPEPEP no Facebook e em um grupo no Whatsapp. A primeira sendo utilizada para divulgar as informações para a sociedade. O segundo para a organização interna do grupo, sendo usado para saberem quais escolas estavam coletando dados, motivarem os estudantes a coletarem os dados, acompanharem e compararem como estava a situação da merenda nas escolas e, quando necessário, acionarem o MP, que tinha um representante no próprio grupo.

O uso do Facebook pelo movimento parece ter sido notado pelos órgãos responsáveis pela merenda. Segundo entrevista, um desses órgãos demonstrou desagrado sobre algumas das postagens.

No começo da campanha em Santarém foi feita uma semana de intensa mobilização, quando os estudantes gravaram vídeos e entrevistas, tiraram fotos e fizeram desenhos sobre a merenda, apresentando todo esse material em um espaço público de maior circulação na cidade.

Em entrevista em Santarém foram narrados dois casos de resultados mais concretos do uso dos dados. Segundo o primeiro, uma das escolas envolvidas na campanha teria ficado sem merenda. Estudantes colocaram fotos da situação no Facebook e Whatsapp (mostrando o estoque da escola vazio, cozinha fechada, etc). Após alguns dias sem merenda enviaram esse material para o MP, protocolando um ofício. Poucos dias depois a escola voltou a receber os alimentos.

O segundo caso ocorreu em uma escola que nunca havia tido merenda, em uma cidade próxima a Santarém. Quando um professor descobriu sobre a campanha da merenda, conversou com seus alunos e um grupo deles passou a frequentar as reuniões do movimento. Eles passaram a fotografar pratos vazios em sua escola para mostrar a falta da merenda. O MP investigou o caso e descobriu que a causa era um equívoco da prefeitura da cidade, que achava que não estava recebendo a verba para a merenda. Depois disso a merenda passou a ser servida.

Vale notar que nesses dois casos o Monitorando não parece ter ajudado diretamente na resolução dos problemas, mas sim a mobilização de uma forma geral.

Outro aspecto interessante é a existência de um questionário feito pelo MPF para monitorar as situação das escolas no país. Esse questionário deve ser preenchido semestralmente pelas direções das escolas. Ele aborda vários aspectos da realidade escolar e não apenas a merenda. Porém, segundo entrevista, como o relatório é bastante extenso e em papel, é difícil para os próprios membros do MP o utilizarem depois. Ainda segundo entrevista, o Monitorando teria a vantagem de ser mais ágil e fornecer automaticamente os gráficos sobre os dados coletados.

Percepção sobre Dados
---------------------

Pelo fato de poucas pessoas terem visto e usado os dados coletados através do Monitorando, é difícil dizer que ele tenha contribuído para uma mudança na percepção de dados dos envolvidos.

Apesar disso, uma entrevistada em Ponta de Pedras disse que, mesmo não tendo visto os dados coletados, por saber que ela os estava coletando para o MP, passou a se sentir parte das estatísticas governamentais.

Em Santarém, onde a coordenação da campanha já possuía alguma prática no uso de dados, é difícil atestar mudanças de percepção, uma vez que o uso de dados já ocorria antes do início do acompanhamento por este projeto.

Desenvolvimento e Consolidação de Parcerias
-------------------------------------------

Em Santarém vários entrevistados afirmaram ter sentido uma aproximação entre os atores envolvidos na merenda: atraindo mais estudantes para o monitoramento e ampliando o diálogo entre MP, poder executivo, gestoras das escolas, merendeiras, professoras e estudantes. Apesar disso, houve relato de afastamento de algumas merendeiras, que não gostaram da campanha no formato atual.

Entrevistados afirmaram que vários gestores apoiaram a campanha, especialmente na semana intensiva de coleta. Durante essa semana os estudantes foram às cozinhas entrevistar merendeiras, gerando certa aproximação. Os estudantes também começaram a frequentar mais a diretoria de suas escolas, dialogando mais sobre seus problemas.

Segundo entrevista, o MP tem incentivado a participação dos estudantes na campanha. Isso contribuiu para que, quando representantes do MP vão às escolas fazer vistorias, os próprios estudantes tenham ido conversar com eles, buscando apresentar os problemas da escola. Os gestores e estudantes também passaram a avisar o MP quando há falta de merenda, algo que antes não ocorria.

Tanto MP como URE afirmaram que foi graças à demanda do movimento que a merenda passou a ser uma pauta mais importante na cidade. A organização dos estudantes em um movimento estudantil ajudou a conseguirem mais atenção desses órgãos. Segundo entrevista, a realização de uma capacitação para as merendeiras também foi fruto da campanha e do diálogo com a URE.

Quanto aos demais grupos externo às escolas, a maioria dos entrevistados não percebeu mudanças. Mas foi afirmado que a mídia ficou interessada em cobrir o uso do aplicativo, chegando a fazer algumas entrevistas em momentos distintos da campanha. Isso ajudou a divulgar a questão da merenda para a sociedade como um todo.

Membros da coordenação da campanha demonstraram interesse de que o próprio governo passasse a usar o Monitorando no monitoramento da merenda, uma vez que poderia auxiliá-lo nessa tarefa.

Em Ponta de Pedras os entrevistados afirmaram não terem sentido aproximações com outros atores ao longo da campanha. Essa diferença com Santarém pode estar relacionada, como dito anteriormente, com a duração da campanha, com o fato do movimento estudantil em Santarém estar melhor estruturado e há mais tempo, e com uma maior disponibilidade dos órgãos em dialogar com ele.

Por parte do MP, os entrevistados demonstraram procurar sempre que possível fazer parcerias com a sociedade, buscando fomentar o protagonismo da mesma no controle social. Segundo eles, a atuação da sociedade é fundamental para potencializar o trabalho do MP, e a coleta de dados um caminho para isso.

Senso de Eficácia e Responsabilidade Coletiva
---------------------------------------------

A maioria dos envolvidos nas campanhas acompanhadas já demonstravam algum tipo de engajamento antes de participarem nelas. Em Ponta de Pedras os estudantes foram escolhidos por serem representantes de classe. Em Santarém o movimento estudantil já possuía um histórico de atividades. Apesar disso, alguns entrevistados em Santarém afirmaram que novas pessoas vieram participar do movimento através da campanha da merenda, e algumas que já participavam se aproximaram mais.

Na mesma cidade, entrevistados disseram sentir que a cobrança que fazem é importante para manter o fornecimento da merenda. Quando a cobrança diminui a merenda também piora. O que, por outro lado, também gera certa frustração para alguns.

Em Ponta de Pedras houve reclamação de pouco resultado na campanha merenda, que chegou a ser comparada com outra campanha realizada na cidade, em outro tema e externa à escola, cujo resultado teria sido melhor. Tal fato, segundo entrevista, está relacionado à dificuldade em conseguir ações concretas por parte dos grupos envolvidos.

Já em outra entrevista, na mesma cidade, foi afirmado que, apesar do pouco resultado, a campanha da merenda estaria sendo melhor encaminhada do que outras, uma vez que as demandas estão, pelo menos, chegando ao MP. As outras campanhas sobre problemas nas escolas se restringiram à diretoria.

A maioria dos entrevistados em Ponta de Pedras também afirmou que não sentem que a campanha ajudou a comunidade escolar a lidar melhor com os problemas na escola. Mas uma entrevistada chegou a dizer que os estudantes estão mais questionadores de uma maneira geral.

Em Santarém vários entrevistados atestaram uma postura mais crítica e questionadora por parte dos estudantes: antes só reclamavam, agora sabem cobrar, conheceriam melhor seus direitos. E a cobrança surtiu efeito, uma vez que conseguiram melhorias concretas para a merenda em alguns casos.

Ainda segundo entrevistas na mesma cidade, a campanha também contribuiu para que os estudantes tivessem mais consciência sobre a escola e seu papel dentro dela, melhorando inclusive a postura deles em sala de aula.

Segundo relatos, em uma das escolas em Santarém, após começarem a participar na campanha da merenda, os estudantes também começaram a se organizar sobre outros problemas da escola. Chegaram a limpar salas de aula na ausência das serventes e a arrumar um buraco no muro da escola. Ainda segundo as entrevistas, os estudantes estão mais dispostos a cooperar, algo que não acontecia com tanta frequência antes da campanha.

Comparando com outras campanhas realizadas, entrevistados em Santarém disseram que o uso do Monitorando daria maior credibilidade e agilidade à campanha. Antes eles precisavam instruir novos participante de outras escolas sobre como coletar os dados, com o uso do Monitorando isso fica mais fácil. Além disso, com o Monitorando não é necessário tabular os dados coletados e os gráficos são gerados automaticamente.

Aplicativos Utilizados pelas Campanhas
--------------------------------------

Além do Monitorando, os aplicativos do Facebook e Whatsapp tiveram papéis importantes nas duas campanhas acompanhadas. Em Santarém o Whatsapp foi usado para a comunicação interna do grupo e, de certa forma, para monitoramento da merenda pela coordenação da campanha, que possivelmente ficaria mais à vontade em fazê-lo vendo as fotos colocadas do grupo do que acompanhando a página de visualizações do Monitorando. O Facebook assumiu um papel de divulgação das informações para a sociedade, não só com fotos das merendas servidas nas escolas, mas também sobre os eventos, entrevistas e demais atividades organizadas pelo movimento.

Em Ponta de Pedras o Facebook não teria sido utilizado, mas o Whatsapp sim, como canal de diálogo entre a comissão da campanha e o MP.

Em ambas as cidades, em alguns casos, estudantes chegaram a deixar de usar o Monitorando e passar a enviar as fotos, ou comentar sobre a ausência da merenda, apenas pelo Whatsapp ou Facebook.

Na opinião de vários entrevistados o uso do Facebook é importante para dar visibilidade à campanha e pressionar os órgãos responsáveis, já o Monitorando é importante por acumular provas sobre a situação da merenda. Nesse sentido os aplicativos se complementam.

Um ponto comentado por vários entrevistados é a maior credibilidade das informações colocadas no Monitorando em comparação com as do Facebook. Entre as causas apresentadas estão: dificuldade de alterar informações uma vez colocadas no Monitorando; Facebook já estaria com credibilidade desgastada; Monitorando seria mais específico, com propósito definido.

Outro possível fator dessa credibilidade pode ser a relação entre grupos de pesquisa (MIT e USP) e o Monitorando, o que talvez dê uma aparência mais científica à ferramenta. Ou ainda, o próprio processo realizado para a coleta dos dados pode contribuir para a credibilidade dos resultados, ao definir uma coordenação da campanha, distribuir tarefas etc.

Comparando o uso do Monitorando com campanhas em que os dados foram coletados sem ele, entrevistados em Santarém afirmaram que ele proporciona maior exatidão às informações, simplifica a participação de mais pessoas, e agiliza tanto a coleta como análise das informações.

Desafios
--------

A seguir discutiremos os principais desafios encontrados ao longo das duas campanhas de monitoramento acompanhadas.

### Organizacionais

Um dos principais desafios relatados foi a dificuldade em manter as pessoas motivadas a continuarem a coleta dos dados. Tanto em Santarém como em Ponta de Pedras, no começo da campanha, havia um número maior de participantes que com o passar dos meses foi diminuindo.

No caso de Santarém, a semana inicial de mobilização parece ter contribuído para a divulgação e fortalecimento da campanha, atraindo várias pessoas e sendo o momento quando mais pessoas participaram. As formações e demais eventos sobre a merenda realizados na mesma cidade também parecem ter contribuído para manter a campanha ativa.

Na opinião de alguns entrevistados, o uso do Monitorando afetou positivamente a motivação dos envolvidos, ou pelo menos quando o aplicativo não apresentava alguma incompatibilidade com os celulares deles. O uso de tecnologia atrai a atenção das pessoas, especialmente das mais jovens.

A dinâmica própria do ambiente escolar também afetou o monitoramento. Entre os pontos citados estão: falta de hábito para registrar a merenda diariamente; casos em que o aluno responsável pelo monitoramento saiu ou mudou de escola; e ainda a chegada do exame para ingresso na universidade, que demandou uma dedicação maior por parte dos estudantes.

Em Ponta de Pedras, outro fator desmotivador foi a falta de um resultado concreto para a merenda. Entrevistados demonstraram sentir falta de uma maior comunicação por parte do MP sobre quais ações estavam sendo tomadas perante a falta da merenda.

Um questionamento feito por alguns entrevistados, em ambas as cidades, foi quanto ao número de pessoas que deveriam ser envolvidas na campanha. Uma campanha com apenas um ou dois estudantes por escola seria mais fácil de gerenciar, porém mais vulnerável caso um deles não pudesse mais participar. Além disso, a campanha menor possivelmente conscientizaria menos pessoas. Nesse sentido alguns entrevistados afirmaram que achavam melhor que as campanhas fossem divulgadas para mais pessoas.

Em Santarém foi cogitado um evento para chamar o máximo possível de pessoas para participar do monitoramento. Porém, por restrições técnicas tanto na coleta como na posterior análise dos dados, tal evento ainda não foi realizado.

Na mesma cidade, a falta de participantes em ambos os períodos de aula de algumas escolas fez com que, em alguns casos, estudantes do período da manhã tivessem que voltar à tarde à escola para realizar o monitoramento do outro período, tendo, por exemplo, que pagar mais uma passagem de ônibus com seus próprios recursos.

Em Ponta de Pedras alguns entrevistados disseram ter acontecido um problema fruto da dinâmica de cidades pequenas. Nelas, uma proporção maior da população costuma trabalhar para a prefeitura e assim, por medo de represálias, evitam criticá-la. Isso teria levado alguns estudantes a se sentirem inseguros ao comentar sobre a merenda no grupo de Whatsapp da campanha, que incluía não apenas os estudantes e o MP, mas também gestoras das escolas.

Em ambas as cidades, segundo a maioria das entrevistas, as merendeiras ficaram desconfortáveis no começo da campanha, temendo que o monitoramento as prejudicassem. Após algumas conversas o receio diminuiu para a maioria delas, mesmo assim, algumas ainda vêem a campanha com certa desconfiança. Cabe nota que, nas escolas acompanhadas, as merendeiras são empregadas do estado, tendo certa estabilidade. A reação poderia ter sido mais adversa caso o serviço fosse terceirizado.

Segundo entrevistas, em Santarém, alguns gestores de escolas também chegaram a reclamar sobre a campanha, alegando que ela poderia prejudicar a imagem das escolas.

### Infraestrutura

Um problema que chegou a afetar o monitoramento foi a quebra ou perda de celulares. Quando isso acontecia com o estudante responsável pelo monitoramento de uma escola, esta ficava sem registros. Foi relatado que em comunidades mais afastadas muitas pessoas não têm smartphones, o que seria um entrave para o uso do Monitorando.

Notou-se que muitos dos participantes acessavam a internet principalmente (quando não exclusivamente) pelo celular, o que está de acordo com os dados coletados pela TIC Domicílios 2015 para a região Norte do país. Reforça assim a importância de suporte da plataforma para esses dispositivos nesse contexto.

Inicialmente o questionário da campanha de Santarém no Monitorando pedia para que o respondente permitisse acesso à geolocalização do celular, informação que seria usada para mapear os dados coletados. No grupo focal realizado, percebeu-se que vários registros estavam sendo mapeados erroneamente, provavelmente por problemas de conexão com o GPS. Optou-se por retirar a coleta de localização do questionário, uma vez que o local da coleta já era identificado quando o respondente escolhia o nome da escola onde o registro estava sendo feito.

Apesar do Monitorando permitir coleta offline para posterior envio dos dados, quase todos os participantes, inicialmente, não perceberam essa funcionalidade. De qualquer forma, em vários casos, as escolas permitiram acesso à internet sem fio para que o estudantes fizessem a coleta dos dados. Oscilações no sinal de internet podem ter prejudicado a coleta de alguns registros.

Apesar de aparentemente a coleta offline não ter sido usada nos casos acompanhados, segundo entrevistas, ela seria importante em algumas escolas mais afastadas, onde não há acesso à internet. Os dados nesses casos poderiam ser enviados depois quando os estudantes fossem à cidade.

### Plataforma

Como dito anteriormente, o Monitorando é uma plataforma protótipo, ainda em experimentação e sem uma equipe de desenvolvimento dedicada em tempo integral ao seu aprimoramento e manutenção. Havia uma perspectiva de parceria com uma empresa de desenvolvimento que auxiliaria nesse ponto, mas isso acabou não se concretizando ao longo do projeto.

Apesar disso, vários problemas e pedidos de melhorias surgiram ao longo do uso da ferramenta e foram sendo atendidos conforme a pesquisadora e desenvolvedora teve disponibilidade para fazê-lo.

Uma questão bastante ressaltada nas entrevistas em Santarém foi a falta de suporte do aplicativo a dispositivos Android mais antigos. Isso gerou uma série de problemas, entre eles: vários estudantes interessados na campanha não puderam participar por terem um celular não suportado; dinâmica negativa entre os estudantes, em que os possuidores de celulares mais novos chegaram a debochar dos que tinham celulares mais antigos; escolha dos participantes das campanhas baseado nos celulares que possuíam.

Como as campanhas envolveram um público jovem, a autoestima deles, segundo entrevista, também parece ter sido afetada pela participação ou não na campanha. Aqueles que podiam participar, usando seus celulares, se sentiram bem por isso, enquanto os que tinham aparelhos não suportados se sentiram mal.

Outros problemas que impediram alguns estudantes de participar da campanha foi a falta de memória no celular para instalar o aplicativo e erros no momento da instalação ou execução.

Vale notar que o aparelho celular costuma ser visto como um objeto pessoal, o que pode ter sido um empecilho para o compartilhamento do mesmo para a coleta dos dados. A existência, por exemplo, de um tablet da escola, suportado pelo aplicativo, talvez tivesse facilitado a coleta em alguns casos.

Frente aos problemas apresentados, algumas escolas chegaram a ficar sem monitoramento através do Monitorando. Em alguns desses casos os estudantes prosseguiram monitorando através de Facebook e Whatsapp.

Uma professora chegou a tentar usar o Monitorando em sala de aula para que os alunos criassem uma campanha e coletassem dados. Uma outra parte da turma faria o mesmo, porém usando papel e caneta. A maior parte dos estudantes queria utilizar o aplicativo, mas o fato de muitos celulares não o suportarem acabou dificultando atividade e gerando atritos entre os alunos. No fim, a atividade teve de ser suspensa para dar prioridade a outras atividades da escola.

A plataforma atualmente não permite a edição do questionário de uma campanha após o lançamento da mesma. A restrição em alterar os dados foi citada por alguns como uma forma de dar credibilidade aos mesmos. Porém, no caso de Santarém, onde a seleção da escola foi feita através de um campo de múltipla escolha, quando uma nova escola aderia à campanha era necessário para o movimento contatar a pesquisadora para que ela modificasse diretamente a base de dados, adicionando a nova escola ao questionário. Esse processo pode ter gerado atrasos e impactado a dinâmica da campanha em alguns casos.

Outro problema identificado foi a perda de alguns dados coletados pelos participantes. Isso teria acontecido no momento de envio dos dados dos celulares para o servidor da plataforma, tendo como causa instabilidades na conexão de internet. Foi feita uma nova versão do aplicativo buscando corrigir o erro, mas não se sabe ao certo quantos registros foram perdidos.

A demora para a identificação desse problema possivelmente está relacionada com o fato dos estudantes não acompanharem a página com a visualização dos dados, ou terem dificuldades para interpretá-la. A falta inicial de um filtro dos dados por escola também pode ter impactado nesse sentido.

Ainda sobre poucas pessoas terem visto a página com as visualizações dos dados, isso pode estar relacionado com o botão correspondente não estar muito explícito no aplicativo. Sobre a interpretação das visualizações, talvez fosse facilitada com melhorias na página. Segundo entrevista, como dito anteriormente, a troca de gráficos em formato de pizza por barras já teria ajudado nesse sentido.

Outro questionamento levantado em Santarém foi quanto à qualidade do relatório gerado pela plataforma. Este precisaria de algumas melhorias para poder ser, por exemplo, entregue ao MP.

De maneira geral não houve reclamações sobre a usabilidade do aplicativo Monitorando, pelo menos quanto à coleta dos dados. Apesar disso, apenas um dos participantes chegou a usar plataforma para criar outra campanha. Vale destacar que a criação de campanhas não é feita pelo próprio aplicativo, mas sim pelo site da plataforma e requer a criação de um usuário.

Outra questão a ser debatida é sobre o enfoque da plataforma Monitorando. A ideia inicial da mesma foi ser uma plataforma genérica para campanhas cidadãs de coleta de dados. O uso dela para campanhas de longa duração (mais do que um ou dois dias) já implicou em alguns requisitos novos. Para atender mais adequadamente às campanhas da merenda, novas funcionalidades seriam importantes. A merenda se mostrou um tema bastante relevante para múltiplos atores, levantando assim o questionamento sobre se caberia ou não o desenvolvimento de uma nova ferramenta específica para o monitoramento da merenda.

Recomendações
=============

A partir do que foi observado e aprendido ao longo deste breve período de acompanhamento, tentaremos aqui explicitar alguns indícios iniciais para os quais a pesquisa parece apontar, apresentando a seguir algumas recomendações gerais que possam auxiliar no aprimoramento da metodologia. É importante lembrar que as restrições de tempo e abrangência deste trabalho tornam necessário que tais indícios e consequentes recomendações sejam lidos com cautela e de maneira crítica.

O fato da plataforma envolver o uso de um aplicativo para celular parece ter certo apelo, atraindo a atenção especialmente de jovens e da mídia. Porém, esse efeito por si só não parece ser suficiente para manter a motivação na coleta dos dados ao longo dos meses. Seria necessária a participação de pessoas já bastante dispostas a tal, como as que já estão acostumadas a se mobilizar sobre temas semelhantes.

Nesse sentido, a realização de outras atividades relacionadas à campanha (como formações, debates, reuniões, apresentações públicas etc) parecem ajudar na manutenção da motivação e fortalecimento da campanha. Pelos mesmos motivos pode ser importante a divulgação, através de outros canais, dos dados coletados, possivelmente também contribuindo para a conscientização da comunidade sobre o tema.

Outro ponto relevante parece ser a apropriação da campanha por parte da comunidade que coletará os dados, de forma a se sentirem não apenas como coletores, mas também como organizadores e responsáveis pela mesma. Para tal é importante verificar se o tema a ser abordado pela campanha é realmente central para a comunidade que coletará os dados. Ela também precisa ter a oportunidade de debater a forma como o processo será desenvolvido e como os dados serão utilizados, até para que se esclareçam questões sobre as limitações da campanha. Vale lembrar que esses são pontos inclusive colocados na metodologia inicial proposta para o uso do Monitorando.

Também é apontado pela mesma metodologia, e cabe ressaltar aqui, a importância de propiciar aos participantes a oportunidade de verem os dados coletados para que compreendam melhor o processo e o fruto direto do trabalho que desempenham. Pode ser necessária a realização de encontros para auxiliar no uso e interpretação das visualizações da ferramenta. Tais encontros e discussões periódicas também seriam importantes para identificar possíveis erros na coleta dos dados (pela própria ferramenta ou pelo grupo) ou nos rumos da campanha.

Dessa forma, apesar da ferramenta ter o potencial de facilitar a coleta, estruturação e análise dos dados, não se pode perder de vista a fundamental importância das pessoas e grupos que efetivamente farão uso dela e de que forma esse uso ocorrerá. O fato de resultados positivos terem sido verificados mesmo sem um uso direto dos dados coletados é uma evidência desta ideia. Sendo assim, talvez possa ser dito que a ferramenta serviu principalmente como uma justificativa para reunir pessoas e uma guia para orientar a ação conjunta entre elas.

Considerações Finais
====================

Este trabalho acompanhou apenas dois estudos de caso e por um período relativamente curto (menor que um semestre). A temática em ambos foi a mesma, fazendo com que os casos estivessem inseridos em universos com características semelhantes (monitoramento da merenda por estudantes de escolas públicas), restringindo assim a generalização dos aprendizados obtidos para outros contextos. Outro fator que reforça a necessidade desse cuidado é a assimetria no acompanhamento e participação dos pesquisadores nos estudos de caso, uma vez que houve uma aproximação maior e mais prolongada com o grupo de Santarém do que com o de Ponta de Pedras. Tal fato pode ter influenciado, por exemplo, na motivação dos envolvidos e no desenvolvimento das campanhas.

Tais restrições limitam a apresentação de conclusões mais gerais e robustas. Porém, acredita-se que os achados consolidados neste relatório possam auxiliar na análise de situações semelhantes e de possíveis novos trabalhos relacionados.

As diferenças encontradas entre os dois estudos de caso parecem reforçar o fato do Monitorando ser apenas mais um elemento dentro de um ecossistema maior e mais complexo. A utilização da ferramenta dentro de uma mobilização maior, realizada por grupos já estruturados e articulados, parece ter sido importante para que conseguisse ajudar a chamar a atenção para o tema abordado e obtivessem resultados mais concretos.

Tendo em vista as perguntas de pesquisa que balizaram este trabalho, buscamos abaixo sintetizar os aprendizados relacionados a cada uma delas, bem como apontar elementos que ainda precisam de maior exploração.

Sobre a mudança na percepção do conceito de dados, houve dificuldade em aferi-la uma vez que não foi possível realizar nenhuma coleta antes das campanhas para compreender o que os participantes tinham de conhecimento prévio. Nas entrevistas realizadas, havia perguntas que buscavam explorar o tema, mas percebeu-se uma dificuldade de compreensão da questão. O que foi possível notar é o aprendizado dos envolvidos sobre o tema monitorado, originado em parte pelas formações oferecidas ao longo da campanha, e em parte pelo próprio processo de coleta da campanha.

Sobre aprender a fazer perguntas e juntar informações para melhor entender um assunto, foi identificada apenas uma iniciativa de criação de novas campanhas (no caso, para o monitoramento do estoque de alimentos das escolas). Contudo, houve ações de outras formas de pesquisa por parte dos envolvidos sobre o tema monitorado, estimuladas pela ideia de contribuir com a melhoria da merenda.

É importante lembrar que em Santarém, parte dos estudantes já tinham experiência prévia com a realização de pesquisas, o que favoreceu o uso da ferramenta em outras situações.

Quanto à adoção dos dados como ferramenta para desenvolver e defender um argumento, não é possível concluir se a análise e visualização dos resultados da coleta induz a isso, uma vez que a maior parte dos envolvidos não visualizou os dados na plataforma ou teve dificuldade para interpretá-lo.

Ainda assim, para além de resultados de coleta, é possível notar que o processo da campanha potencializou processos de cobrança, pressão e conscientização para a solução de problemas ou encaminhamento de soluções de questões públicas. São diversos os relatos de que a merenda melhorou desde que a campanha teve início em Santarém. Já em Ponta de Pedras, o que foi relatado a partir da campanha não foi uma mudança direta do problema da merenda em si, mas uma maior sensibilização sobre o tema. De maneira análoga, observou-se que para comunicar a questão à comunidade, não foi necessário esperar a consolidação dos dados em um relatório.

Pensando na aproximação entre cidadãos e poder público ou instituições locais, em ambos os casos estudados novas relações foram iniciadas ao longo da campanha. Porém o curto período de acompanhamento dos casos não permitiu verificar se tais relacionamentos se consolidaram em parcerias. Em Santarém, a aproximação com a prefeitura e com a URE aponta para uma tendência maior à consolidação de relacionamentos.

Quanto ao desenvolvimento de um maior senso de responsabilidade coletiva ser fruto da campanha de monitoramento, é preciso considerar sempre que a mesma se insere em um contexto mais amplo: os estudantes participantes também estão engajados em outras atividades e movimentos. Assim, não se pode considerar as mudanças de comportamento dos estudantes em relação à escola um resultado exclusivo da campanha, embora tenham sido feitas afirmações nesse sentido por parte dos entrevistados. Exemplo disso são algumas escolas em Santarém, nas quais alguns estudantes passaram a se preocupar mais com a escola, inclusive ajudando em tarefas de zeladoria.

Sendo assim, nesses estudos de caso, não foi possível verificar o quanto o uso dos dados estruturados potencializam processos de controle social de maneira mais sólida. Mas podemos dizer que o processo como um todo de monitoramento do problema trouxe diversas contribuições importantes, tais como: potencialização de movimentos já iniciados, articulação de diversos atores em torno de uma causa comum, estabelecimento de novas relações, ampliação da atenção sobre o tema e maior conscientização sobre ele, possibilidade de encaminhamento para a resolução dos problemas, maior potencial de escalabilidade e agilidade graças ao uso da plataforma.

Com estes apontamentos, fica claro que ainda há necessidade de aprofundar o olhar sobre os usos da metodologia e da ferramenta Monitorando, para responder a algumas das perguntas investigativas aqui levantadas, bem como verificar se as descobertas apontadas neste relatório são aplicáveis a outros contextos de uso do Monitorando, com temas, públicos e espaços diversos.

Referências
===========
