require 'pry'

def is_multiple_of_3_or_5?(number)
  # verifie si le reste de la div et a zero 
    (number % 3 == 0) || (number % 5 == 0)
end

def sum_of_3_or_5_multiples(final_number)
  # intitialise final_sum a zero qui contiendra la somme final
  final_sum = 0
  #initialise current_number qui contiendra le nombre courant dans la boucle
  current_number = 0 
  
  while current_number < final_number       
    current_number  += 1
     # Si le nombre courant est un multiple de 3 ou de 5
    if is_multiple_of_3_or_5?(current_number)
       # On ajoute le nombre courant à la variable final_sum
      final_sum += current_number
    end
  end
	return final_sum #on return la somme de tous
end


