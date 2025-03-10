# Game Design Document (GDD) - CTL Collectors

CTL Collectors é um jogo casual 2D em pixel art, onde o jogador assume o papel de um coletor de frutas, com o objetivo de capturar o maior número possível dentro de um tempo limitado. As frutas caem do topo da tela, e o jogador deve movê-las com um cesto na parte inferior, evitando que toquem o chão. A velocidade de queda aumenta progressivamente, tornando o jogo mais desafiador, e frutas especiais oferecem bônus ou efeitos temporários.

O jogo é simples de aprender, mas desafiador de dominar, ideal para sessões rápidas e competitivas. Com controles intuitivos para mobile e PC, o foco está na pontuação e na coleta estratégica de frutas. O estilo visual vibrante e a jogabilidade dinâmica atraem jogadores de todas as idades.

# Sumário

1. [Informações Gerais](#1-informações-gerais)<br>
    1.1. [Título do Jogo](#11-título-do-jogo)  
    1.2. [Plataforma](#12-plataforma)  
    1.3. [Gênero](#13-gênero)  
    1.4. [Público-Alvo](#14-público-alvo)  
    1.5. [Visão Geral do Jogo](#15-visão-geral-do-jogo)  

2. [Mecânicas de Jogo](#2-mecânicas-de-jogo)<br>
    2.1. [Regras Básicas](#21-regras-básicas)  
    2.2. [Controles](#22-controles)  
    2.3. [Objetivos e Metas](#23-objetivos-e-metas)  
    2.4. [Sistema de Pontuação](#24-sistema-de-pontuação)  
    2.5. [Mecânicas de Interação](#25-mecânicas-de-interação)  
    2.6. [Sistemas de Progressão e Recompensas](#26-sistemas-de-progressão-e-recompensas)  
    2.7. [Inteligência Artificial (IA)](#27-inteligência-artificial-ia)  
    2.8. [Dinâmicas de Jogo](#28-dinâmicas-de-jogo)  
    2.9. [Economia do Jogo](#29-economia-do-jogo)  

3. [Narrativa](#3-narrativa)<br>
    3.1. [História Principal](#31-história-principal)  
    3.2. [Personagens](#32-personagens)  
    3.3. [Cenários](#33-cenários)  
    3.4. [Missões e Quests](#34-missões-e-quests)  
    3.5. [Roteiro e Diálogos](#35-roteiro-e-diálogos)  

4. [Design de Níveis](#4-design-de-níveis)<br>
    4.1. [Estrutura dos Níveis](#41-estrutura-dos-níveis)  
    4.2. [Mapas e Layouts](#42-mapas-e-layouts)  
    4.3. [Desafios e Puzzles](#43-desafios-e-puzzles)  
    4.4. [Fluxo dos Níveis](#44-fluxo-dos-níveis)  
    4.5. [Balanceamento de Dificuldade](#45-balanceamento-de-dificuldade)  

5. [Arte e Estilo Visual](#5-arte-e-estilo-visual)<br>
    5.1. [Estilo Artístico](#51-estilo-artístico)  
    5.2. [Personagens e Animações](#52-personagens-e-animações)  
    5.3. [Cenários e Ambientes](#53-cenários-e-ambientes)  
    5.4. [Interface do Usuário (UI)](#54-interface-do-usuário-ui)  
    5.5. [Paleta de Cores](#55-paleta-de-cores)  

6. [Áudio](#6-áudio)<br>
    6.1. [Trilha Sonora](#61-trilha-sonora)  
    6.2. [Efeitos Sonoros](#62-efeitos-sonoros)  
    6.3. [Dublagem](#63-dublagem)  
    6.4. [Ambiente Sonoro](#64-ambiente-sonoro)  

7. [Progresso e Salvamento](#7-progresso-e-salvamento)<br>
    7.1. [Sistema de Progressão](#71-sistema-de-progressão)  
    7.2. [Sistema de Salvamento](#72-sistema-de-salvamento)  

8. [Monetização](#8-monetização)<br>
    8.1. [Modelo de Negócio](#81-modelo-de-negócio)  
    8.2. [Itens Pagos](#82-itens-pagos)  

9. [Testes e Qualidade](#9-testes-e-qualidade)<br>
    9.1. [Testes de Jogo](#91-testes-de-jogo)  
    9.2. [Feedback dos Jogadores](#92-feedback-dos-jogadores)  

10. [Conclusão](#10-conclusão)<br>
    10.1. [Sumário](#101-sumário)  
    10.2. [Próximos Passos](#102-próximos-passos)  

## 1. Informações Gerais

### 1.1. Título: CTL Collectors

### 1.2. Plataforma
    Plataforma: Web (jogável em navegadores).

### 1.3. Gênero

    Gênero: Jogo casual de coleta, com foco em reflexos e pontuação.


### 1.4. Público-Alvo

    Público-Alvo: Jogadores casuais de todas as idades, desde crianças até adultos que buscam uma experiência rápida e divertida.



### 1.5. Visão Geral do Jogo

**Descrição:**
CTL Collectors é um jogo 2D em pixel art que coloca o jogador no papel de um coletor de frutas. O objetivo é simples: coletar o maior número possível de frutas dentro de um tempo limitado, enquanto a velocidade de queda dos objetos aumenta progressivamente, elevando o desafio. Além disso, frutas específicas devem ser coletadas conforme indicado na tela, adicionando uma camada estratégica à jogabilidade. Com um estilo visual vibrante e uma mecânica fácil de aprender, mas difícil de dominar, CTL Collectors é perfeito para sessões rápidas e momentos de diversão.

## 2. Mecânicas de Jogo

### 2.1. Regras Básicas

**Regras:**

O jogador controla um cesto posicionado na parte inferior da tela.

Frutas caem do topo da tela e devem ser coletadas antes de tocarem o chão.

Cada fruta coletada adiciona pontos à pontuação total.

Frutas especiais podem fornecer bônus ou efeitos únicos, como pontos extras ou aumento temporário de velocidade.

A velocidade de queda das frutas aumenta progressivamente, tornando o jogo mais desafiador com o tempo.

O tempo é limitado, e o jogo termina quando o cronômetro chega a zero.

### 2.2. Controles

- **Controles:**

Mobile: Toque e deslize na tela para mover o cesto.

PC: Clique e segure o botão esquerdo do mouse para movimentar o cesto.

### 2.3. Objetivos e Metas

- **Objetivos:**

Coletar o maior número de frutas possível para maximizar a pontuação.

Coletar frutas específicas conforme indicado na tela para cumprir objetivos secundários.

Adaptar-se ao aumento progressivo da velocidade de queda para manter o ritmo do jogo.


### 2.4. Sistema de Pontuação
**Pontuação:**

Cada fruta coletada adiciona pontos à pontuação total.

Frutas especiais podem fornecer bônus de pontos ou efeitos temporários, como congelar o tempo ou aumentar a velocidade do cesto.

### 2.5. Mecânicas de Interação

**Interação:**

O jogador interage apenas com o cesto, movendo-o lateralmente para coletar frutas.

Frutas especiais exigem atenção extra, pois podem aparecer de forma aleatória e oferecer recompensas significativas.

### 2.6. Sistemas de Progressão e Recompensas
Progressão:

A velocidade de queda das frutas aumenta progressivamente, elevando a dificuldade ao longo do tempo.

Frutas especiais podem fornecer bônus temporários, como aumento de velocidade ou pontos extras.

Recompensas:

Pontuação alta é registrada para competição entre jogadores, incentivando a rejogabilidade.

### 2.7. Inteligência Artificial (IA)
IA:

Não há IA direta, pois o jogo é baseado em mecânicas de queda e coleta.

### 2.8. Dinâmicas de Jogo

**Dinâmicas:**

A interação entre a velocidade crescente das frutas e a necessidade de coletar frutas específicas cria uma dinâmica desafiadora e envolvente.

O aumento progressivo da dificuldade mantém o jogador engajado e motivado a superar sua própria pontuação.

### 2.9. Economia do Jogo

**Economia:**

Atualmente, o jogo não possui uma economia interna, mas futuras atualizações podem incluir microtransações para skins de cesto ou frutas especiais com efeitos visuais únicos.

### 3. Narrativa

### 3.1. História Principal

**Resumo:**

CTL Collectors não possui uma narrativa complexa, mas se passa em um ambiente vibrante e alegre, como um pomar ou mercado de frutas. O jogador assume o papel de um coletor de frutas, cujo objetivo é coletar o máximo possível antes que o tempo acabe.

### 3.2. Personagens

**Personagens:**

Coletor de Frutas: Representado pelo cesto controlado pelo jogador.

### 3.3. Cenários

**Cenários:**

O jogo ocorre em um ambiente colorido e vibrante, com fundo que remete a um pomar ou mercado de frutas.

### 3.4. Missões e Quests

**Missões:**

Coletar frutas específicas conforme indicado na tela.

### 3.5. Roteiro e Diálogos
**Diálogos:**

Não há diálogos, mas instruções simples podem aparecer na tela para guiar o jogador.

### 4. Design de Níveis

### 4.1. Estrutura dos Níveis
**Estrutura:**

O jogo não possui níveis tradicionais, mas a dificuldade aumenta progressivamente com o tempo.

### 4.2. Mapas e Layouts

**Mapas:**

A tela é única, com frutas caindo do topo e o cesto na parte inferior.

### 4.3. Desafios e Puzzles

**Desafios:**

Coletar frutas específicas e lidar com o aumento da velocidade de queda.

### 4.4. Fluxo dos Níveis

**Fluxo:**

O jogo começa fácil e vai ficando mais difícil com o tempo.

### 4.5. Balanceamento de Dificuldade
**Dificuldade:**

A velocidade de queda das frutas aumenta progressivamente, mantendo o jogo desafiador.

### 5. Arte e Estilo Visual

### 5.1. Estilo Artístico
Estilo: Pixel art 2D, com cores vibrantes e estética nostálgica.

### 5.2. Personagens e Animações

**Arte dos Personagens:**

O cesto é o principal elemento controlado pelo jogador.

### 5.3. Cenários e Ambientes

**Arte dos Cenários:**

Fundo colorido remetendo a um pomar ou mercado de frutas.

### 5.4. Interface do Usuário (UI)

**Interface:**

Contador de pontos, cronômetro e indicadores de frutas especiais.

### 5.5. Paleta de Cores

**Paleta de Cores:**

Cores vibrantes e alegres, com tons de verde, vermelho e amarelo.

### 6. Áudio

### 6.1. Trilha Sonora

Trilha Sonora: "It Takes Two to Tango - Vanoss Gaming Background Music HD".

### 6.2. Efeitos Sonoros

**Efeitos Sonoros:**

Sons de frutas sendo coletadas e efeitos especiais para bônus.

### 6.3. Dublagem

**Dublagem:**

Não há dublagem.

### 6.4. Ambiente Sonoro

**Som Ambiente:**

Música de fundo e efeitos sonoros simples.

### 7. Progresso e Salvamento

### 7.1. Sistema de Progressão

**Progressão:**

Aumento da velocidade de queda das frutas e coleta de frutas específicas.

### 7.2. Sistema de Salvamento

**Salvamento:**

Pontuação registrada para competição entre jogadores.

### 8. Monetização
### 8.1. Modelo de Negócio
**Modelo:**

Gratuito.

### 8.2. Itens Pagos

**Itens:**

Skins de cesto e frutas especiais com efeitos visuais únicos, conforme ganha pontos, podendo trocar em skins ou desconto na mensalidade de internet.

### 9. Testes e Qualidade
### 9.1. Testes de Jogo

**Plano de Testes:**

Testes de usabilidade para garantir que os controles sejam intuitivos.

Testes de balanceamento para ajustar a dificuldade.

### 9.2. Feedback dos Jogadores

**Feedback:**

Coleta de feedback através de pesquisas in-game e no atendimento com o cliente.

### 10. Conclusão

### 10.1. Resumo Final

**esumo Final:**

CTL Collectors é um jogo casual e envolvente, projetado para oferecer uma experiência simples, mas desafiadora, para jogadores de todas as idades. Com um estilo visual vibrante em pixel art e uma jogabilidade baseada em reflexos e estratégia, o jogo se destaca pela sua mecânica de coleta de frutas e aumento progressivo de dificuldade. A ausência de inimigos diretos e a ênfase na competição por pontuação criam uma experiência acessível e divertida, ideal para sessões rápidas ou momentos de descontração. O jogo também possui potencial para expansões futuras, como a implementação de rankings online e microtransações para personalização.

### 10.2. Próximos Passos

**Próximos Passos:**
Para garantir o sucesso de CTL Collectors, as seguintes etapas serão priorizadas:

Finalização do Protótipo: Desenvolver uma versão jogável com todas as mecânicas básicas implementadas.

Testes de Usabilidade: Realizar testes com um grupo de jogadores para avaliar a intuitividade dos controles e a fluidez da jogabilidade.

Balanceamento de Dificuldade: Ajustar a progressão da velocidade de queda das frutas e a frequência de frutas especiais para garantir um desafio justo e envolvente.

Implementação de Ranking Online: Adicionar um sistema de pontuação global para incentivar a competição entre jogadores.

Expansão de Conteúdo: Desenvolver skins personalizáveis para o cesto e frutas, além de possíveis modos de jogo adicionais.

Lançamento e Divulgação: Preparar uma campanha de marketing para o lançamento do jogo, com foco em plataformas web e redes sociais.

### 10.3. Considerações Finais

**Considerações Finais:**

CTL Collectors é um projeto que combina simplicidade e diversão, com um grande potencial para cativar jogadores casuais e entusiastas de pixel art. A equipe está comprometida em entregar uma experiência de alta qualidade, com atenção aos detalhes visuais, sonoros e de jogabilidade. O feedback dos jogadores será essencial para refinar o jogo e garantir que ele atenda às expectativas do público. Com um plano claro e etapas bem definidas, CTL Collectors está no caminho certo para se tornar um jogo memorável e repleto de desafios.


