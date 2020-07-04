def cuadrado(n)
  n.times do |i|
    n.times do |j|
      print '*'
    end
    puts
  end
end

def triangulo(n)
  n.times do |i|
   puts '*'*(i+1)
  end
end

def piramide(n)
  (2*n-1).times do |i|
    n.times do |j|
      if (j <= i) && i+j < (2*n-1)
        print '*'
      end
    end
    puts
  end
end

def menu
  valid = false
  while !valid
    puts 'Seleccione una figura:'
    print "\t1.Cuadrado \n \t2.Triángulo \n \t3.Pirámide \n \t4.Salir \n"
    opcion = gets.to_i
    if opcion>=1 && opcion<=4
      valid = true
    else
      puts 'Opción no valida. Escoja una opción entre uno y cuatro.'
    end
  end
  return opcion
end

playing = false
valid_number = false

while !playing
  choose = menu()
  if choose == 4
    puts 'Fin programa'
    break
  else
    while !valid_number
      puts 'Ingrese un número:'
      number = gets.to_i
      if number > 1
        if choose == 1
          cuadrado(number)
        elsif choose == 2
          triangulo(number)
        else
          piramide(number)
        end
        valid_number = true
      else
        puts 'Número no valido. Ingrese otro número.'
      end
    end
    playing = true
  end
end


