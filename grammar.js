/**
 * @file Carbon grammar for tree-sitter
 * @author Sam Estep
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "carbon",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
