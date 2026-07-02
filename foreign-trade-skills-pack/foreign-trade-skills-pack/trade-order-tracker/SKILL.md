---
name: trade-order-tracker
description: Track foreign-trade order progress from inquiry, quotation, PI, payment, production, inspection, shipment, CI, customs documents, delivery, and after-sales follow-up. Use when the user asks what the next step is, whether an order is stuck, what to remind the customer, or how to manage an export order timeline.
---

# Trade Order Tracker

## Job

Tell the user where an order is and what to do next. Keep it practical: no big theory, just next action.

## Order Stages

1. Inquiry: customer asks price, model, lead time, or sample.
2. Quote/PI: seller prepares price or Proforma Invoice.
3. Payment: customer pays deposit or full amount.
4. Production/stock: seller prepares goods.
5. Pre-shipment: confirm packing, address, forwarder, and documents.
6. Shipment: prepare CI, packing data, customs materials, tracking or BL.
7. After-sales: delivery confirmation, feedback, repeat order.

## Output Shape

- Current stage.
- Next 1 to 3 actions.
- Missing information.
- Message to send customer or internal team.

## Red Flags

Warn if payment is not confirmed, PI is not accepted, delivery time is unknown, shipping address is missing, or shipment documents are requested too early.
