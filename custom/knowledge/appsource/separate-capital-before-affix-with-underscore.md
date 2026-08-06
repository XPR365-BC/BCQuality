---
bc-version: [all]
domain: appsource
keywords: [object-affix, suffix, underscore, naming-convention, readability, mandatoryaffixes]
technologies: [al]
countries: [w1]
application-area: [all]
---

# Separate a suffix affix with an underscore when the preceding character is a capital letter

## Description

An AppSource extension's registered affix (configured as `mandatoryAffixes` /
`mandatoryPrefix` in `AppSourceCop.json`, see `object-affixes-prevent-collisions.md`) is
commonly appended directly to the end of an object's PascalCase name (for example
`HelperSXE`, `CustomerCardABC`). When the base name itself ends in an uppercase letter —
typically an acronym such as a country or identifier-type code (`VAT`, `DUNS`, `KVK`) —
gluing the affix straight on produces a run of capitals that is hard to parse at a glance and
easy to misread as part of the base name (`NetworkDUNSSXE`, `NetworkVATABC`). This applies to
whatever affix a given project has registered; it is not tied to one specific affix string.

## Best Practice

When the character immediately preceding the project's affix is an uppercase letter, insert
an underscore between the base name and the affix, e.g. with an affix of `SXE`:
`NetworkDUNS_SXE`, `NetworkVAT_SXE`, `NetworkLEITWEGID_SXE`. When the preceding character is
lowercase, no underscore is needed and none should be added: `HelperSXE`,
`EInvoiceIdentifierTypeSXE`, `NetworkUndefinedSXE`. Apply this to every object, field, and
member that carries the affix, not just codeunits, using whichever affix the current project
has registered in `AppSourceCop.json`.

See sample: `separate-capital-before-affix-with-underscore.good.al`.

## Anti Pattern

Appending the affix directly after a base name that itself ends in an uppercase letter,
producing an unbroken run of capitals at the boundary (`NetworkDUNSSXE`, `NetworkKVKSXE`).
Detection signal: any declared object, field, or member name matching `[A-Z]<Affix>$` with no
underscore before the project's registered affix.

See sample: `separate-capital-before-affix-with-underscore.bad.al`.
