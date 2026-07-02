---
name: trade-docs-helper
description: Prepare foreign-trade documents from customer requests, screenshots, product lists, price sheets, and provided templates. Use when the user asks to create, fill, review, explain, or convert PI/Proforma Invoice, CI/Commercial Invoice, PO/Purchase Order, certificate of origin, customs declaration materials, export declaration forms, quotation sheets, or trade document packages for export orders.
---

# Trade Docs Helper

## Core Rule

Use this skill to help the user handle export trade paperwork in simple, direct language. Prefer practical output over theory: identify what document is needed, collect missing order details, use the bundled templates, generate the filled document, and explain what the user should send to the customer or forwarder.

## Available Assets

Use these bundled templates before inventing a new layout:

- `assets/pi-template.xlsx` - Excel PI template.
- `assets/proforma-invoice-template.docx` - Word PI template.
- `assets/ci-template.xlsx` - Excel CI template.
- `assets/commercial-invoice-template.docx` - Word CI template.
- `assets/po-template.xlsx` - Excel PO template.
- `assets/purchase-order-template.docx` - Word PO template.
- `assets/certificate-of-origin-template.docx` - certificate of origin template.
- `assets/price-list-token-20260629.xlsx` - product/model price list.
- `assets/customs-declaration/export-customs-template.xlsx` - export customs declaration template.
- `assets/customs-declaration/customs-form-guide.jpg` - customs form visual guide.
- `assets/customs-declaration/customs-filling-standard.pdf` - formal customs filling rules.

## Document Meanings

Explain trade abbreviations simply:

- PI / Proforma Invoice: quotation/order-confirmation invoice before payment or production.
- CI / Commercial Invoice: formal invoice used for shipment, customs clearance, and payment records.
- PO / Purchase Order: buyer's order document sent to seller.
- Certificate of Origin: document proving where goods were made.
- Customs declaration materials: documents for forwarder/customs when goods are ready to export.

## Decide What To Make

If the customer asks for "PI", make a Proforma Invoice.

If shipment is ready or the user mentions customs, clearance, forwarder, booking, or shipping documents, prepare CI and customs materials.

If the buyer sends an order confirmation or the user asks for a purchase order, use PO.

If the destination country or buyer asks for origin proof, use the certificate of origin template.

## Required Information

Before filling a final document, gather only the missing fields that matter:

- Seller company name, address, contact, phone/email.
- Buyer company name, address, contact, phone/email.
- PI/CI/PO number and date. If missing, create a sensible draft number and mark it as editable.
- Product model/name, quantity, unit price, currency, total amount.
- Trade term, such as EXW, FOB, CIF, DAP, or DDP.
- Payment term, such as T/T 30% deposit, 70% before shipment.
- Delivery time, shipping method, destination, and packing details when relevant.
- Bank information for PI/CI when payment is requested.

If the user only has a screenshot, extract the visible models and quantities, then clearly list what cannot be read.

## Price Handling

When a model list is provided, check `assets/price-list-token-20260629.xlsx` first if the user says to use the token quote sheet or does not provide another price source.

Do not guess prices silently. If the model is missing from the price list or unclear in a screenshot, say which line needs confirmation.

## Output Workflow

1. Identify the needed document type in plain Chinese.
2. Read or inspect the matching template.
3. Pull product and price data from the user's message, screenshots, spreadsheets, or the bundled price list.
4. Fill a copy of the template; never overwrite the template asset.
5. Save user-facing deliverables to the current workspace `outputs` folder unless the user asks for another path.
6. Return the file link and a short "what this is / what to check before sending" summary.

## Plain-Language Style

Use direct, plain Chinese explanations for the user. Preferred message style:

- Explain that PI means a proforma invoice or quotation confirmation.
- Explain exactly what is still missing, such as buyer name, product price, or trade term.
- Explain whether the document is for customer confirmation, shipment, customs, or the forwarder.

Avoid jargon-only explanations. If an English trade term is necessary, give the Chinese meaning immediately.

## Safety Checks

Before final delivery, check:

- Quantity times unit price equals line total.
- Currency is consistent.
- Buyer and seller names are not swapped.
- PI is not confused with CI.
- Payment terms and trade terms are present or marked as missing.
- Any OCR uncertainty from screenshots is called out.
- Customs documents are treated as shipment-stage materials, not early quotation documents.
