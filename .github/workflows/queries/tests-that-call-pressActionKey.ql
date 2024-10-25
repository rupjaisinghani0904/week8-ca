/**
 * @name Tests calling pressActionKey
 * @description Finds test functions that call pressActionKey
 * @kind problem
 * @problem.severity recommendation
 * @id javascript/tests-calling-press-action-key
 */

import javascript

from Function test
where
  // Identify test files
  test.getFile().getBaseName().matches("%test%") and
  // Look for calls to pressActionKey within the test
  exists(CallExpr call |
    call.getContainer() = test and 
    call.getCalleeName() = "pressActionKey"
  )
select test, "This test calls pressActionKey"