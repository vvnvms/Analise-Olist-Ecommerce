# 📊 Análise de E-commerce Olist: Desvendando o Impacto da Logística na Satisfação do Cliente

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/sql-server)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![Dataset](https://img.shields.io/badge/Dataset-Olist-green?style=for-the-badge)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

> **🎯 Projeto desenvolvido em 2 semanas** | Análise completa de 100k+ pedidos (2016-2018) revelando como atrasos logísticos custam milhões em satisfação do cliente.

---

## 🔥 Por que este projeto importa?

**O problema:** E-commerces brasileiros enfrentam um dilema crítico — **entregas atrasadas destroem reputação**, mas otimizar logística custa caro. Onde investir primeiro?

**A resposta está nos dados.**

Este projeto analisa o e-commerce da **Olist** (marketplace brasileiro) e revela o impacto real de atrasos logísticos na satisfação do cliente, oferecendo insights acionáveis para decisões estratégicas.

---

## 💡 Principais Descobertas

### 🚨 **Atrasos Logísticos = Desastre de Reputação**
- **Pedidos pontuais:** Avaliação média de **4.29/5** ⭐
- **Pedidos atrasados:** Avaliação despenca para **2.57/5** ⭐
- **Impacto:** Queda de **40% na satisfação** por atraso

### 📍 **Geografia Importa: Disparidade Regional**
- **Norte/Nordeste:** Até **32 dias** de entrega em média
- **Sul/Sudeste:** **8-12 dias** de entrega
- **Conclusão:** Clientes em regiões remotas têm experiências drasticamente piores

### 📈 **Crescimento Explosivo, mas Sustentável?**
- **70x crescimento** em vendas durante 2017
- **Pico Black Friday:** 3x volume normal
- **Alerta:** 41% da base de clientes está "Em Risco" (análise RFM)

### 🎯 **Lei de Pareto Aplicada**
- **5 estados** (SP, RJ, MG, RS, PR) = **65%** do volume total
- Oportunidade de otimizar logística focando em regiões-chave

---

## 🛠️ Metodologia & Stack Técnico

```
📥 Dados Brutos (Kaggle)
    ↓
🐍 Python (Pandas, Matplotlib, Seaborn)
    ├── EDA & Limpeza
    ├── Segmentação RFM
    └── Mapas Interativos (Folium)
    ↓
🗄️ SQL Server
    ├── Queries Analíticas
    ├── Agregações Geográficas
    └── Análise Temporal
    ↓
📊 Power BI
    ├── Dashboard Executivo
    ├── Análise Logística
    └── Matriz de Correlação
```

**Ferramentas:**
- **Python (Google Colab):** Análise exploratória, visualizações estatísticas
- **SQL Server:** Queries complexas, agregações por região/tempo
- **Power BI:** Dashboards interativos para tomada de decisão

---

## 📸 Dashboards Interativos

### 🏢 Visão Geral: Crescimento & Geografia
![Dashboard Crescimento](https://private-user-images.githubusercontent.com/177060690/555611039-6ef6a373-a91a-4a77-9f12-5466c5d7a4b6.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzU2ODQxMzIsIm5iZiI6MTc3NTY4MzgzMiwicGF0aCI6Ii8xNzcwNjA2OTAvNTU1NjExMDM5LTZlZjZhMzczLWE5MWEtNGE3Ny05ZjEyLTU0NjZjNWQ3YTRiNi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwNDA4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDQwOFQyMTMwMzJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT02OGI1YWViODVkYTVlMmNjMmMxYmJhNTA1OWMzNTAwOGE3NTBjODkyYzBhNjA0MmVkODM5NDg3ZjZmYjFiNmRiJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.a6CaEn1raraO_eYeez8fQRo_sB4d1RII7zZP3iVUEKY)

**Destaques:**
- Linha temporal de crescimento 2016-2018
- Concentração geográfica por estado (Pareto)
- Top categorias de produtos

### 🚚 Análise Crítica: Logística × Satisfação
![Dashboard Logística](https://private-user-images.githubusercontent.com/177060690/555610971-17e93c19-b7cf-4646-8222-02031d24d688.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzU2ODQxMzIsIm5iZiI6MTc3NTY4MzgzMiwicGF0aCI6Ii8xNzcwNjA2OTAvNTU1NjEwOTcxLTE3ZTkzYzE5LWI3Y2YtNDY0Ni04MjIyLTAyMDMxZDI0ZDY4OC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwNDA4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDQwOFQyMTMwMzJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT00MWVkOGY5ZjU5MWZlNjU1NjgzZjJhOTJmMmExMjQwZGE2ODhlM2JlNDc3Y2NiZTBkMWFiMzMxNWI2ODE2OTE5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.kfSoE38mHvB7I2GBJEmakFkvo99IP0WviapP7ifSwNE)

**Destaques:**
- **Impacto visual:** Atraso → Queda de nota 5 para 2.5
- Mapa de calor: Tempo de entrega por região
- Correlação entre prazo estimado vs. real

---

## 📂 Estrutura do Projeto

```
Analise-Olist-Ecommerce/
│
├── 📓 Analise_Olist_Notebook.ipynb    # Análise Python completa
├── 🗄️ QueryAnaliseOlist.sql          # Queries SQL documentadas
├── 📊 Analise_Olist_PBI.pbix          # Dashboard Power BI
├── 📸 Fotos_PowerBI.md                # Screenshots dos dashboards
└── 📄 README.md                       # Este arquivo
```

---

## 🔍 Análises Realizadas

| Análise | Técnica | Insight |
|---------|---------|---------|
| **Crescimento Temporal** | Time Series | 70x crescimento em 2017 |
| **Concentração Geográfica** | Lei de Pareto | 5 estados = 65% do volume |
| **Categorias Top** | Ranking | Cama/mesa/banho lidera vendas |
| **Satisfação Cliente** | Correlação | Atraso = -40% na nota |
| **Matriz Logística** | Heatmap | Norte/Nordeste até 4x mais lento |
| **Tempo de Entrega** | Box Plot | Variação de 8-32 dias por estado |
| **Segmentação RFM** | Clustering | 41% clientes em risco |
| **Mapa Interativo** | Geospatial | Hotspots de atraso |

---

## 🎓 O que aprendi

- **Python:** Pandas avançado, visualizações com Matplotlib/Seaborn, Folium para mapas
- **SQL:** JOINs complexos, agregações, window functions
- **Power BI:** DAX, relacionamentos, dashboards executivos
- **Negócios:** Análise RFM, Lei de Pareto, correlação logística × satisfação

---

## 🚀 Como Explorar

### 📊 Dashboard Power BI
**Arquivo:** `Analise_Olist_PBI.pbix`  
> Abra no Power BI Desktop para interagir com filtros e drill-downs

### 🐍 Análise Python (Com Mapa Interativo!)
**GitHub não renderiza mapas Folium**, então use:  
👉 **[Ver Notebook Completo no NBviewer](https://nbviewer.org/github/vvnvms/Analise-Olist-Ecommerce/blob/1b26da8c4bc5c5dbfd3db9e916a34900cfca4da6/Analise_Olist_Notebook.ipynb)**

### 🗄️ Queries SQL
**Arquivo:** `QueryAnaliseOlist.sql`  
> Queries comentadas para replicar análises

---

## 📊 Dataset

**Fonte:** [Brazilian E-Commerce Public Dataset by Olist (Kaggle)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

**Escopo:**
- 100k+ pedidos (2016-2018)
- 8 tabelas relacionadas
- Dados reais anonimizados

---

## 🎯 Próximos Passos (Roadmap)

- [ ] Análise preditiva: Modelo de regressão para prever atrasos
- [ ] Dashboard em tempo real com Streamlit
- [ ] Análise de sentimento em reviews de clientes
- [ ] Otimização de rotas logísticas com algoritmos de grafos

---

## 👤 Sobre o Autor

**Vinicius Vecchiotti**  
Estudante de Ciência da Computação (UFABC) | Analista de Dados em Formação

📧 viniciusvecchiotti@gmail.com  
💼 [LinkedIn](https://www.linkedin.com/in/viniciusvecchiotti/)  
🌐 [Portfólio](https://vvecchiotti.vercel.app/)

---

## 📝 Licença

Este projeto está sob a licença MIT. Sinta-se livre para usar e adaptar!

---

⭐ **Se este projeto ajudou você, deixe uma estrela!** ⭐
