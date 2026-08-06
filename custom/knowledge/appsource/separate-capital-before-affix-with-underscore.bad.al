namespace Sample.Affix;

// Anti-pattern: the affix is glued directly onto a base name ending in an uppercase acronym,
// producing an ambiguous run of capitals at the boundary ("VATSXE", "DUNSSXE").
codeunit 50101 EInvIdNetworkVATSXE
{
}

codeunit 50102 EInvIdNetworkDUNSSXE
{
}
