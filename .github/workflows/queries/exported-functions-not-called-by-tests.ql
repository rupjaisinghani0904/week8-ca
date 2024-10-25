import javascript

predicate isExportedFunction(Function f) {
  exists(Module m | m.getAnExportedValue(_).getAFunctionValue().getFunction() = f) and
  not f.inExternsFile()
}

from Function f
where 
  isExportedFunction(f) and
  not exists(CallExpr call, Function test |
    call.getCallee().getAFunctionValue() = f and
    test.getFile().getBaseName().matches("%test%") and
    test.getACall() = call
  )
select f, "Exported function not called by any test"