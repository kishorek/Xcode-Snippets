// Enumerate Index Set
// Enumerate through an index set.
//
// IDECodeSnippetCompletionPrefix: 
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: A04E599D-7A30-4143-B0A6-D5A32E13EB26
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSUInteger index = [<#indexSet#> firstIndex];
while (index != NSNotFound) {
    <#statements#>
    index = [<#indexSet#> indexGreaterThanIndex:index];
}
