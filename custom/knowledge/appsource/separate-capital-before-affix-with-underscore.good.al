namespace Sample.Affix;

// Affix "SXE" registered in AppSourceCop.json. Base name ends lowercase -> no separator needed.
codeunit 50100 EInvIdNetworkUndefinedSXE
{
}

// Base name ends in an uppercase acronym -> separate with an underscore.
codeunit 50101 EInvIdNetworkVAT_SXE
{
}

codeunit 50102 EInvIdNetworkDUNS_SXE
{
}
