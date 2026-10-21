# PIX Automático | Estratégia de testes baseada em risco

Atividade prática de QA: análise, design e estratégia de testes para a funcionalidade de **PIX Automático** (cobranças recorrentes com consentimento prévio do pagador).

> **Status:** planejamento e design de testes. Este repositório documenta a estratégia, os cenários e as ferramentas previstas. A execução e as evidências ainda não fazem parte deste material.

## Direcionamento

A abordagem é **baseada em risco**. A prioridade de teste é definida por *o que* é impactado e *quem* é impactado. Tudo o que afeta **reputação**, **financeiro** e **regulatório** vem primeiro. Na dúvida sobre por onde começar, parte-se dos piores cenários possíveis nesses três pilares.

- Falhas que não afetam os três pilares são rastreadas e avaliadas quanto à correção na primeira iteração. Tudo deve ser rastreável.
- As falhas devem ser previsíveis e o sistema deve falhar de forma controlada.
- A automação amplia a cobertura e dá agilidade, mas não é o ponto focal.

## Conteúdo

| Arquivo | O que contém |
|---|---|
| [docs/01-analise-e-design-de-testes.md](./docs/01-analise-e-design-de-testes.md) | Cenários críticos, fluxos, estados do sistema e técnicas de teste |
| [docs/02-matriz-de-risco.md](./docs/02-matriz-de-risco.md) | Matriz de risco e relação dos cenários críticos com os três pilares |
| [docs/03-estrategia-de-testes.md](./docs/03-estrategia-de-testes.md) | Priorização, planejamento, métricas e critérios de entrada e saída |
| [docs/04-ferramentas-e-automacao.md](./docs/04-ferramentas-e-automacao.md) | Ecossistema de ferramentas e ordem de automação |
| [cenarios/pix-automatico.feature](./cenarios/pix-automatico.feature) | Cenários em Gherkin dos fluxos críticos |

## Como este material está organizado

Problema → risco → estratégia → testes → automação → evidência.

## Autora

Geovana Maria · [LinkedIn](https://www.linkedin.com/in/geovana-maria-qa)
