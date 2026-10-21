# 4. Ferramentas e automação

## Ecossistema mínimo de qualidade

| Finalidade | Ferramenta | Uso previsto |
|---|---|---|
| Gestão de testes | Jira | RTM, documentação do projeto, casos de teste, execução e evidências |
| API e contrato | Postman | Endpoints de consentimento, execução e idempotência |
| Automação de interface | Cypress | Fluxos críticos via interface |
| Carga | JMeter | Cobranças simultâneas na data de execução |

## O que automatizar primeiro

1. Fluxo de execução automática na data correta
2. Idempotência: tentativa duplicada deve ser rejeitada
3. Saldo insuficiente: não cobra, notifica e gera log
4. Revogação antes da data: a cobrança não ocorre

## Práticas de acompanhamento

- **RTM no Jira:** matriz centralizada e atualizada a cada sprint, mostrando o que está coberto, o que está pendente e qual regra de negócio (RN) está associada a cada teste.
- **Checklist de teste de confirmação:** antes de qualquer teste, o dev informa quais RNs a mudança afeta e se há risco de impactar a execução automática ou a idempotência.
- **Alinhamento pós-execução:** toda falha que não afete os três pilares é alinhada quanto à priorização da correção, e as dúvidas são esclarecidas.
