---
name: trade-price-checker
description: Check export prices, quote sheets, PI line totals, currency consistency, discounts, quantity breaks, freight assumptions, and arithmetic mistakes. Use when the user asks to verify a quotation, compare prices, calculate totals, find pricing problems, or check whether a PI amount is correct.
---

# Trade Price Checker

## Job

Check numbers before the user sends a quote or PI. Be boringly careful: quantity, unit price, total, currency, and discount must match.

## Check List

- product model matches requested item
- quantity is clear
- unit price is present
- currency is present
- line total equals quantity times unit price
- subtotal matches sum of lines
- discount rule is stated
- freight is included or excluded clearly
- trade term matches whether freight is included

## Output Shape

Use:

- Looks correct.
- Needs confirmation.
- Possible mistake.
- Customer-facing note if needed.

## Safety

Do not invent price data. If a model is not in the price sheet, say it is missing and needs manual confirmation.
