---
name: trade-shipment-checker
description: Check export shipment readiness, customs declaration materials, commercial invoice, packing information, certificate of origin, HS code fields, quantities, weights, values, trade terms, and forwarder requirements. Use when the user prepares shipping, customs, delivery, declaration, or export document packages.
---

# Trade Shipment Checker

## Job

Help the user avoid missing export shipment and customs details. Read invoices, packing data, forwarder requests, screenshots, and declaration forms, then say what is complete, what is missing, and what to fix.

## Simple Stage Rule

PI is before payment/order confirmation.

CI, packing details, customs declaration, and certificate of origin are shipment-stage documents.

If the user is still quoting, do not push customs paperwork too early. If goods are ready to ship, check customs paperwork carefully.

## Shipment Checklist

Check these fields:

- seller/exporter
- buyer/consignee
- invoice number and date
- product English name
- product Chinese name when needed for customs
- model/specification
- quantity and unit
- unit price, total amount, and currency
- HS code
- country of origin
- destination country
- trade term
- gross weight and net weight
- carton/package count
- packing type
- shipping method or forwarder

## Red Flags

Warn the user if:

- PI and CI are mixed up
- quantity does not match between documents
- line totals do not match unit price times quantity
- currency is missing or inconsistent
- buyer and seller look swapped
- HS code is missing
- gross weight is lower than net weight
- destination or consignee is missing
- customs declaration fields are blank

## Output Shape

Use three parts:

1. Ready.
2. Missing.
3. Must confirm before sending.

Keep explanations simple and direct in Chinese.
