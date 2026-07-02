---
name: trade-quote-pi-maker
description: Prepare export quotations and Proforma Invoices from customer model lists, quantities, screenshots, price sheets, and trade terms. Use when the user asks to calculate a quote, make a PI, check quote details, convert a customer request into PI lines, or decide what is missing before sending a PI.
---

# Trade Quote PI Maker

## Job

Turn a customer request into a clean quote or PI plan. Use simple Chinese for the user and clear English for customer-facing text.

## Workflow

1. Extract product model/name and quantity.
2. Check whether price source is provided. If not, suggest using the bundled quote sheet in `trade-docs-helper`.
3. Calculate line total as quantity times unit price.
4. Check currency, payment term, trade term, delivery time, and validity.
5. If a final PI file is needed, use the `trade-docs-helper` templates.

## Do Not Guess

Do not invent unit price, freight, discount, delivery time, bank account, or trade term. Mark missing fields clearly.

## Output Shape

- What can be filled now.
- What is missing.
- Draft customer reply.
- Whether this is ready for PI.
