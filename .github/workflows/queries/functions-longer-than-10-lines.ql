/**
 * @name Functions longer than 10 lines
 * @kind problem
 * @problem.severity recommendation
* @id javascript/functions-longer-than-10-lines
 */

import javascript

from Function f
where f.getNumLines() > 10
select f, "Function is longer than 10 lines with " + f.getNumLines().toString() + " lines"