from Function f
where f.getNumLines() > 10
select f, "Function is longer than 10 lines with " + f.getNumLines().toString() + " lines"