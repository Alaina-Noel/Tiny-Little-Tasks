def check_multiplicity(integer)
  integer.to_s.split("").uniq.size == 1 ?  "Repeated Number!" :  "Not a repeated Number"
end

p check_multiplicity(77777)
