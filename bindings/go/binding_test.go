package tree_sitter_carbon_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_carbon "github.com/samestep/tree-sitter-carbon/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_carbon.Language())
	if language == nil {
		t.Errorf("Error loading Carbon grammar")
	}
}
