# GemirTools News

## GemirTools 0.2 (Em desenvolvimento)

### 🆕 Novas Funcionalidades

#### Carbon Equations (`carbon_equations.R`)
- ✅ **Adicionadas 100+ funções de carbono** para diferentes espécies de plantas e árvores
- ✅ **Organização por biomas brasileiros**:
  - 🌳 Amazônia (20+ espécies)
  - 🌵 Caatinga (25+ espécies)
  - 🌾 Cerrado (15+ espécies)
  - 🌴 Mata Atlântica (35+ espécies)
  - 🏜️ Pampa e Pantanal (20+ espécies)
  
#### Categorias de Espécies
- 🌴 Palmeiras (Euterpe oleracea, Euterpe precatoria, Attalea phalerata, etc.)
- 🌾 Culturas Agrícolas (Café, Banana, Cacau, Citrus)
- 🌲 Espécies Florestais Comerciais (Eucalipto, Teca, Acacia, Araucaria)
- 🌳 Espécies Nativas (Castanha-do-Brasil, Jequitibá, Cedro, etc.)
- 🌱 Arbustos e Plantas Não Madeiráveis

#### Best Equations All Functions (`best_equations_all_functions.R`)
- ✅ **Compilação completa de equações de biomassa** para florestas brasileiras
- ✅ Todas as funções adaptadas para cálculo de carbono
- ✅ Parâmetros padronizados e variáveis não utilizadas removidas

### 🔧 Melhorias

#### Padronização de Funções
- ✅ **Variáveis renomeadas para consistência**:
  - `dbh_cm` → `dap` (Diâmetro à Altura do Peito)
  - `h_m` → `altura` (Altura da árvore)
  
- ✅ **Novos parâmetros padrão**:
  - `porc_C = 0.47` (Proporção de carbono IPCC 47%)
  - Aplicado a todas as funções de carbono

- ✅ **Remoção de parâmetros não utilizados**:
  - Eliminadas variáveis `NA_real_` não usadas nas fórmulas
  - Código mais limpo e eficiente
  - Melhor compreensão das dependências das funções

#### Referências Científicas Completas
- ✅ Adicionadas referências para todas as equações
- ✅ Inclusão de autores, anos e links para artigos
- ✅ Rastreabilidade total das fontes

### 📖 Documentação

#### README.md Renovado
- ✅ Documentação completa e profissional
- ✅ Exemplos de uso práticos
- ✅ Tabela de parâmetros dendrométricos
- ✅ Explicação das proporções de carbono
- ✅ Aplicações práticas do pacote

### 🐛 Correções

- ✅ Corrigida função `cedro_australiano_carbon` com parâmetros corretos
- ✅ Corrigida função `avocado_carbon` com sintaxe correta
- ✅ Validação de todas as funções sem erros de lint

---

## GemirTools 0.1

### 🎯 Primeira Versão Lançada

#### Funcionalidades Iniciais
- `crop_theusin()`: Função para processamento de dados de culturas
- `evalparsetext()`: Função para avaliação de texto como expressão R

#### Características
- Estrutura básica do pacote R
- Documentação inicial
- Testes unitários com testthat

---

## 🔄 Histórico de Mudanças por Versão

### v0.2 Changelog

**Adições:**
- 100+ novas funções de carbono
- Suporte completo para 6 biomas brasileiros
- Melhorias na documentação

**Mudanças:**
- Padronização de parâmetros em todas as funções
- Remoção de parâmetros não utilizados
- Uniformização de nomes de variáveis

**Correções:**
- Sintaxe de funções de carbono
- Validação de linting
- Consistência de formatação

---

## 📚 Referências Científicas Principais

As funções de carbono baseiam-se em estudos consolidados:

- **IPCC (2006)**: Guidelines for National Greenhouse Gas Inventories
- **Chave et al. (2005)**: Tree allometry and improved estimation in tropical forests
- **Velasco (2009)**: Sequestro de carbono em mata ciliar
- **Higuchi (1998)**: Biomassa em floresta tropical úmida da Amazônia
- **Vieira et al. (2008)**: Estimativa de biomassa e carbono na Mata Atlântica
- **Scolforo et al. (2008)**: Inventário Florestal de Minas Gerais

---

## 🚀 Roadmap Futuro

### Próximas Versões

- [ ] Função para calcular carbono total em floresta/plantação
- [ ] Suporte a visualização de dados com ggplot2
- [ ] Funcionalidades de validação de entrada
- [ ] Cache de resultados para operações em lote
- [ ] Aplicativo Shiny para cálculo interativo de carbono
- [ ] Integração com dados de inventários florestais

---

**Última atualização**: Outubro, 2025