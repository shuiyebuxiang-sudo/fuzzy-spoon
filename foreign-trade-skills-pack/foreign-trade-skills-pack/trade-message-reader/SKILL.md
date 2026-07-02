---
name: trade-message-reader
description: Read and explain foreign-trade customer messages, screenshots, chats, emails, and order lists. Use when the user asks what a customer means, whether the customer wants PI, quote, PO, payment, shipment, customs documents, samples, discount, delivery time, or a reply strategy.
---

# Trade Message Reader

## Job

Turn customer messages into plain next steps. The user often sends screenshots, short English messages, model lists, or broken wording. Explain what the customer wants in simple Chinese, then say what to do next.

## Output Shape

Use this structure:

1. What the customer means.
2. What document or action is needed.
3. What information is still missing.
4. What to reply.

Keep it short and direct. Use practical Chinese, not textbook English grammar lessons.

## Common Signals

- "send PI" means prepare a Proforma Invoice.
- "quote", "price", "best price" means prepare quotation or PI after confirming quantity.
- "PO attached" or "purchase order" means the buyer is placing or confirming an order.
- "invoice for shipment", "commercial invoice", "customs" means CI or customs-stage documents.
- "CO", "certificate of origin" means origin certificate.
- "lead time", "delivery time" means they ask when goods can be ready.
- "discount", "target price" means price negotiation.
- "sample" means sample cost, freight, and delivery need confirmation.
- "HS code", "declaration", "forwarder" means shipment/customs details.

## Missing Info Checklist

Ask only for what blocks the next step:

- unclear product model/name
- quantity
- unit price or price source
- buyer company name/address
- seller company information
- trade term
- payment term
- shipping destination
- delivery time

## Recommended Behavior

If the customer asks for PI, tell the user PI is the immediate next document and suggest using the trade-docs-helper skill.

If the customer message is unclear, list the readable parts and mark the uncertain parts.

If the customer is negotiating price, do not agree automatically. Suggest a polite reply that asks quantity, target price, or confirms best offer.
