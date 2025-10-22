# GemirTools  <img src="man/figures/logo.png" align="right" alt="" width="250" />

> **Ferramentas úteis + Equações de Carbono para estimativa de biomassa em diferentes ecossistemas brasileiros**

## 📋 Visão Geral

**GemirTools** é um pacote R desenvolvido para facilitara estimativa de **carbono acima do solo (AGB - Above Ground Biomass)** em plantas e árvores de diferentes espécies, biomas e ecossistemas brasileiros. As funções utilizam **equações alométricas** baseadas em pesquisas científicas consolidadas para converter medidas dendrométricas simples (como DAP - Diâmetro à Altura do Peito) em estimativas de carbono sequestrado.

### ✨ Principais Características

- 🌳 **Mais de 100+ funções de carbono** para diferentes espécies
- 🗺️ **Organizado por biomas brasileiros**: Amazônia, Caatinga, Cerrado, Mata Atlântica, Pampa, Pantanal
- 📊 **Baseado em dados científicos** com referências completas
- 🔧 **Fácil de usar**: parâmetros padronizados em todas as funções
- 🌱 **Conversão automática** de biomassa para carbono (padrão: 47% = 0.47)

---

## 🚀 Instalação

```r
library("devtools")
install_github("Matheusbp/GemirTools")
```

---

## 📚 Funções Principais

### Carbon Equations (`carbon_equations.R`)

Este arquivo contém as principais funções para calcular carbono em plantas. Todas as funções retornam o carbono em **kg por indivíduo**.

#### **Estrutura das Funções**

Todas as funções de carbono seguem uma estrutura padrão:

```r
# Exemplo genérico
especie_carbon <- function(dap, altura = NA, porc_C = 0.47) {
  # Cálculo baseado em equação alométrica
  return(porc_C * (cálculo_biomassa))
}
```

**Parâmetros Padrão:**
- `dap` (ou equivalente): Diâmetro à altura do peito [cm]
- `altura`: Altura da árvore [m] (quando necessário)
- `porc_C`: Proporção de carbono na biomassa (padrão: 0.47 = 47%)

---

### 🌴 Funções por Categoria

#### **1. Espécies Gerais**

Funções aplicáveis a várias espécies em contextos específicos:

```r
# Para árvores com DAP >= 5 cm
general_carbon(dap, altura, densidade_madeira, porc_C = 0.47)

# Para florestas tropicais úmidas (Higuchi, 1998)
general_carbon_higuchi(dap, altura, porc_C = 0.47)

# Para Mata Atlântica restaurada
general_carbon_mixed_atlantic_forest_abg(dap, altura, densidade_madeira, porc_C = 0.47)
```

#### **2. Palmeiras**

```r
# Palmeira genérica
palmeira_carbon(dap, porcentagem_peso_seco = 0.6, porc_C = 0.47)

# Euterpe oleracea (Açaí)
euterpe_oleracea_carbon(dap)

# Euterpe precatoria
euterpe_precatoria_carbon(altura, porc_C = 0.47)

# Attalea phalerata
attalea_phalerata_mart_ex_spreng_outro(hf, porc_C = 0.47)
```

#### **3. Culturas Agrícolas**

```r
# Café arábica
coffee_carbon(diam_base, porc_C = 0.47)

# Banana
banana_carbon(dap, porc_C = 0.47)

# Cacau
cacau_carbon(altura, diam_30cm, porc_C = 0.47)

# Citrus sp
citrus_carbon(diam_30cm, porc_C = 0.47)
```

#### **4. Espécies Florestais Comerciais**

```r
# Acacia mangium
acacia_carbon(dap, porc_C = 0.47)

# Eucalipto
eucalipto_carbon(dap, altura, porc_C = 0.47)

# Teca
teca_carbon(dap, porc_C = 0.47)

# Araucaria angustifolia (Mata Atlântica)
araucaria_angustifolia_bertol_kuntze_mata_atlantica(dap, porc_C = 0.47)
```

#### **5. Arbustos e Plantas Não Madeiráveis**

```r
# Arbustos em geral
arbusto_carbon(altura_arbusto, crown_diameter, porc_C = 0.47)

# Jussara
jussara_carbon(dap, altura, porc_C = 0.47)

# Pupunha
pupunha_carbon(dap, porc_C = 0.47)
```

#### **6. Espécies por Bioma**

**Amazônia** (20+ funções):
```r
aniba_rosiodora_ducke_amazonia(dap, altura, porc_C = 0.47)
bertholletia_excelsa_bonpl_amazonia(dap, altura, porc_C = 0.47)  # Castanha-do-Brasil
varias_amazonia(dap, porc_C = 0.47)  # Espécies variadas
```

**Caatinga** (25+ funções):
```r
anadenanthera_colubrina_vell_brenan_caatinga(dap, porc_C = 0.47)
mimosa_tenuiflora_willd_poir_caatinga(dap, altura, porc_C = 0.47)
varias_caatinga(dap, altura, porc_C = 0.47)
```

**Cerrado** (15+ funções):
```r
anadenanthera_colubrina_vell_brenan_cerrado(dap, altura, porc_C = 0.47)
eucalyptus_grandis_w_hill_cerrado(dap, altura, porc_C = 0.47)
```

**Mata Atlântica** (35+ funções):
```r
araucaria_angustifolia_bertol_kuntze_mata_atlantica(dap, porc_C = 0.47)
bambusa_oldhamii_munro_mata_atlantica(dap, porc_C = 0.47)
pinus_taeda_l_mata_atlantica(dap, porc_C = 0.47)
```

**Pampa e Pantanal**:
```r
acacia_mearnsii_de_wild_pampa(dap, porc_C = 0.47)
anadenanthera_colubrina_vell_brenan_pantanal(dap, porc_C = 0.47)
```

---

## 💡 Exemplos de Uso

### Exemplo 1: Calcular carbono em uma árvore de eucalipto

```r
library(GemirTools)

# Árvore com DAP = 30 cm e altura = 25 m
carbono_eucalipto <- eucalipto_carbon(dap = 30, altura = 25, porc_C = 0.47)
print(carbono_eucalipto)  # Carbono em kg
```

### Exemplo 2: Calcular carbono em espécies da Amazônia

```r
# Castanha-do-Brasil com DAP = 50 cm e altura = 35 m
carbono_castanha <- bertholletia_excelsa_bonpl_amazonia(
  dap = 50, 
  altura = 35, 
  porc_C = 0.47
)

# Espécies variadas da Amazônia
carbono_variado <- varias_amazonia(dap = 40, porc_C = 0.47)
```

### Exemplo 3: Usar proporção de carbono diferente

```r
# IPCC padrão: 47%
carbono_ipcc <- general_carbon(dap = 35, altura = 28, densidade_madeira = 0.55, porc_C = 0.47)

# Proporção customizada: 50%
carbono_custom <- general_carbon(dap = 35, altura = 28, densidade_madeira = 0.55, porc_C = 0.50)
```

### Exemplo 4: Processar múltiplas árvores

```r
# Dados de múltiplas árvores
dados <- data.frame(
  dap = c(20, 30, 45, 55),
  altura = c(15, 22, 28, 35)
)

# Calcular carbono para cada árvore de eucalipto
dados$carbono <- mapply(
  eucalipto_carbon,
  dap = dados$dap,
  altura = dados$altura,
  porc_C = 0.47
)

print(dados)
```

---

## 🔬 Parâmetros Importantes

### Medidas Dendrométricas

| Parâmetro | Descrição | Unidade | Sigla |
|-----------|-----------|---------|-------|
| `dap` | Diâmetro à Altura do Peito | cm | DAP |
| `altura` | Altura total da árvore | m | H |
| `hf` | Altura do fuste (tronco) | m | HF |
| `cap` | Circunferência à altura do peito | cm | CAP |
| `crown_diameter` | Diâmetro da copa | m | - |
| `densidade_madeira` | Densidade básica da madeira | g/cm³ | ρ |

### Proporção de Carbono

A proporção padrão de carbono na biomassa seca é **0.47** (47%), de acordo com o IPCC (*Intergovernmental Panel on Climate Change*). Esta pode ser ajustada conforme necessário:

- **IPCC Padrão**: 0.47
- **Valor mínimo comum**: 0.40
- **Valor máximo comum**: 0.50

---

## 📖 Referências Científicas

As funções são baseadas em estudos científicos consolidados, incluindo:

- **Velasco, 2009**: Sequestro de carbono em mata ciliar
- **Chave et al., 2005**: Allometry and improved estimation in tropical forests
- **Higuchi, 1998**: Biomassa em floresta tropical úmida da Amazônia
- **Vieira et al., 2008**: Estimativa de biomassa e carbono na Mata Atlântica
- **IPCC, 2006**: Guidelines for National Greenhouse Gas Inventories
- **Scolforo et al., 2008**: Inventário Florestal de Minas Gerais

Cada função contém referências específicas em seu código-fonte.

---

## 🛠️ Funções Adicionais

### `best_equations_all_functions.R`

Compêndio completo de equações de biomassa para florestas brasileiras, também adaptadas para cálculo de carbono.

---

## 📝 Notas Importantes

⚠️ **Precisão das Estimativas:**
- As estimativas de carbono dependem da qualidade das medições dendrométricas
- Cada equação foi desenvolvida para um contexto específico (estado, bioma, espécie)
- Use a equação mais apropriada para sua região e espécie

💡 **Proporção de Carbono:**
- O valor padrão 0.47 (IPCC) é adequado para a maioria dos casos
- Espécies lenhosas podem variar entre 0.40-0.50
- Ajuste conforme sua pesquisa ou recomendações locais

🌱 **Aplicações:**
- Projetos de carbono e compensação ambiental
- Inventários florestais
- Avaliação de serviços ecossistêmicos
- Estudos de sequestro de carbono
- Planejamento de reflorestamento

---

## 📞 Suporte

Para dúvidas, sugestões ou contribuições, entre em contato através do repositório do projeto.

---

## 📄 Licença

Este pacote está disponível sob a licença especificada no arquivo LICENSE.

---

**Desenvolvido para estimativa de carbono em ecossistemas brasileiros** 🌍
