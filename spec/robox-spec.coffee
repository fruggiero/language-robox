describe "Robox grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-robox")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.r3")

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe "source.r3"
