#  Desafio SQL: Análise Exploratória de Pedidos de Restaurantes

Este repositório contém um exercício prático de **análise exploratória com SQL Server**, simulando um cenário de plataforma de pedidos de restaurantes.  
A ideia foi criar uma base fictícia de clientes, restaurantes, pedidos e promoções, e em seguida responder a diferentes perguntas de negócio usando consultas SQL.

---

##  Estrutura do Projeto

### 1. Criação da Tabela e Carga de Dados
- Criação da tabela `restaurant_orders`.
- Inserção de dados fictícios contemplando vários cenários:
  - Clientes com apenas um pedido.
  - Clientes que compraram várias vezes.
  - Pedidos com e sem promoções.
  - Clientes que pararam de comprar.
  - Casos de terceiros pedidos para simulação de retenção.

### 2. Consultas de Análise
As queries exploram diferentes técnicas de SQL:

- **Top 3 restaurantes por tipo de culinária**  
  Usando `ROW_NUMBER()` para rankear sem `LIMIT` ou `TOP`.

- **Aquisição de clientes por dia**  
  Identificação da data do primeiro pedido de cada cliente.

- **Clientes que compraram apenas em janeiro/2025**  
  Filtrando clientes de um período específico e validando recorrência.

- **Clientes que não compraram nos últimos 7 dias**  
  Identificação de clientes inativos, mas que foram adquiridos no mês anterior e com 1º pedido via promoção.

- **Segmentação a cada 3º pedido**  
  Uso de `%` (módulo) para capturar 3º, 6º, 9º pedido de cada cliente.

- **Clientes sempre com promoções**  
  Seleção de clientes com mais de um pedido em que todos usaram códigos promocionais.

- **% de clientes adquiridos sem cupom em jan/2025**  
  Cálculo de proporção de clientes cujo 1º pedido foi feito sem promoção.

---

##  Técnicas e Conceitos Usados
- Criação e inserção de dados (`CREATE TABLE`, `INSERT`).
- Funções de janela (`ROW_NUMBER()`).
- CTEs (`WITH ... AS`).
- Agrupamentos (`GROUP BY`, `COUNT`).
- Expressões condicionais (`CASE WHEN`).
- Operadores de módulo (`%`) para segmentação de pedidos.
- Filtragem temporal (`DATEADD`, `GETDATE`).

---

##  Como Executar
1. Clone o repositório.
2. Execute o script no **SQL Server Management Studio** ou outro ambiente compatível com SQL Server.
3. Explore e adapte as consultas para outros cenários de negócio.

---

##  Objetivo de Aprendizado
Este exercício teve como objetivo:
- Praticar **análise exploratória em SQL Server**.
- Consolidar conceitos de **funções de janela, datas e agregações**.
- Simular perguntas de negócio aplicáveis em análises de **Growth, Retenção e Marketing**.



---
