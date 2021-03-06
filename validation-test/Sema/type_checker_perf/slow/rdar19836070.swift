// RUN: %target-typecheck-verify-swift -solver-expression-time-threshold=1
// REQUIRES: tools-release,no_asserts

let _: (Character) -> Bool = { c in
  // expected-error@-1 {{expression was too complex to be solved in reasonable time; consider breaking up the expression into distinct sub-expressions}}
  ("a" <= c && c <= "z") || ("A" <= c && c <= "Z") || c == "_"
}
