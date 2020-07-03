def menu(i)
  player = i==0? 'uno:' : 'dos:'
  valid = false
  while !valid 
    puts "Turno jugador #{player}"
    print "\t1.Piedra \n \t2.Papel \n \t3.Tijeras \n \t4.Salir \n"
    opcion = gets.to_i
    if opcion >= 1 && opcion <= 4
      valid = true
    else
      puts 'Opción escogida no es valida. Debe escoger una opción entre uno y cuatro.'
    end
  end
  return opcion
end


jugador_1 = 0
jugador_2 = 0


2.times do |i|
  if i == 0 
    jugador_1 = menu(i)
    if jugador_1 == 4
      puts 'Fin del juego'
      break
    end
  else
    jugador_2 = menu(i)
    if jugador_2 == 4
      puts 'Fin del juego'
      break
    end
  end
end

if jugador_1 == jugador_2
  puts 'Empate'
elsif (jugador_1 == 1 && jugador_2 == 3) || (jugador_1 == 2 && jugador_2 == 1) || (jugador_1 == 3 && jugador_2 == 2)
  puts 'Gana jugador uno'
else
  puts 'Gana jugador dos'
end


