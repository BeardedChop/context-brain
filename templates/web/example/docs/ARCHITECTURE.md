# ARCHITECTURE

## Overview
Single-page web app with one main conversion flow: visitor sees offer, enters email, gets confirmation.

## Main parts
- `app/` — page entry
- `components/` — hero, signup form, success message
- `lib/` — submit helper or validation

## Rules
- keep the page focused on one CTA
- split UI by section, not by premature abstraction
- add backend complexity only after validation
