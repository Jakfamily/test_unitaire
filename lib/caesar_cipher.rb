def translate_ascii(letter)
  letter.ord #traduit lettre en ascii avec .ord
end


def caesar_cipher(str, shift)
  result = ""
  str.each_char do |c|
    if c =~ /[a-zA-Z]/
      base = c =~ /[a-z]/ ? 'a' : 'A'
      result += ((c.ord - base.ord + shift) % 26 + base.ord).chr
    else
      result += c
    end
  end
  result
end




# # Cette fonction prend en entrée une chaîne de caractères et un nombre de décalage.
# # Elle renvoie la chaîne de caractères avec chaque lettre décalée de "shift" positions dans l'alphabet.
# def caesar_cipher(str, shift)
#   result = "" # initialiser une chaîne vide pour stocker le résultat
#   str.each_char do |c| # parcourir chaque caractère dans la chaîne d'entrée
#     if c =~ /[a-zA-Z]/ # vérifier si le caractère est une lettre alphabétique
#       base = c =~ /[a-z]/ ? 'a' : 'A' # déterminer la base (minuscule ou majuscule) de l'alphabet
#       result += ((c.ord - base.ord + shift) % 26 + base.ord).chr # ajouter la lettre décalée à la chaîne de résultat
#       # (convertir la lettre en un entier, appliquer le décalage, ramener le résultat dans l'intervalle [0,25],
#       # ajouter la base de l'alphabet et convertir le résultat en caractère)
#     else # si le caractère n'est pas une lettre alphabétique
#       result += c # ajouter le caractère tel quel à la chaîne de résultat
#     end
#   end
#   result # renvoyer la chaîne de résultat finale
# end