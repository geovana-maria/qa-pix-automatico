# 3. Estratégia de testes

## O que testar primeiro

Fluxo principal (consentimento > execução > log), idempotência e saldo insuficiente, além de todos os cenários críticos conforme o direcionamento.

## O que pode ser reduzido ou adiado

Fluxos alternativos de menor risco e probabilidade e cenários que não afetam diretamente o financeiro, o regulatório e a reputação.

## Estimativa de planejamento

| Fase | Duração | Atividades |
|---|---|---|
| Início | 2 a 3 dias | Análise de riscos, mapeamento de condições, RTM, critérios de entrada e saída, ambiente de teste |
| Meio | 2 a 4 dias | Execução dos cenários críticos, automação dos fluxos de idempotência e execução automática, report de defeitos bloqueadores, testes de log e auditoria |
| Fim | A definir | Fluxos alternativos, testes de confirmação e regressão, consolidação de evidências, report final |

## Métricas de qualidade

- **Cobertura baseada em risco:** 100% dos cenários críticos e mínimo de 80% dos médios.
- **Taxa de falha em cenários críticos:** zero falhas não resolvidas ao final do ciclo.
- **Defeitos críticos:** rastreados e resolvidos.
- **Cobertura de automação:** mínimo de 60% dos cenários críticos automatizados.

## Critérios de entrada

- Fluxos críticos mapeados na RTM
- Estratégia baseada em risco definida
- Ambiente de teste disponível
- Dados de teste preparados (usuários com e sem saldo)

## Critérios de saída

- Execução automática validada com evidência
- Comportamento em falhas documentado
- Zero defeitos impeditivos abertos
- Cobertura de risco igual ou superior a 90% nos itens críticos
