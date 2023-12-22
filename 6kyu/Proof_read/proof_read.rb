# https://www.codewars.com/kata/583710f6b468c07ba1000017

# You've just finished writing the last chapter for your novel when a virus suddenly infects your document. 
# It has swapped the 'i's and 'e's in 'ei' words and capitalised random letters. Write a function which will:

# a) remove the spelling errors in 'ei' words. (Example of 'ei' words: their, caffeine, deceive, weight)

# b) only capitalise the first letter of each sentence. Make sure the rest of the sentence is in lower case.

# Example: He haD iEght ShOTs of CAffIEne. --> He had eight shots of caffeine.

def proofread(string)
  words = string.downcase.split
  
  words.map.with_index do |word, i|
    word.gsub!('ie', 'ei')
    word.capitalize! if i == 0
    
    condition = i > 0 && words[i - 1].end_with?('.')
    condition ? word.capitalize! : word
  end.join(' ')
end


p proofread("SHe wEnt CaNoIenG.") # => "She went canoeing."
p proofread("He haD iEght ShOTs of CAffIEne") # = # => "He had eight shots of caffeine")
p proofread("THe neIghBour's ceiLing FEll on His Head. The WiEght of It crusHed him To thE gROuNd.") # => "The neighbour's ceiling fell on his head. The weight of it crushed him to the ground.")
p proofread("ThE kiDs enJoYEd the SLiegh RidE.") # => "The kids enjoyed the sleigh ride.")
p proofread("SHE did NOT diegn to GUESS her NIEGHBOUR'S wieght.") # => "She did not deign to guess her neighbour's weight.")
p proofread("They had to fIEgn thIEr appreciation for her bIEge tights.") # => "They had to feign their appreciation for her beige tights.")
p proofread("Niether of the fencers wanted to forfiet the match. They both expected to sieze victory.") # => "Neither of the fencers wanted to forfeit the match. They both expected to seize victory.")
p proofread("Protien intAkE miGHt afFect aNy pOteNtIaL wieght LOSs.") # => "Protein intake might affect any potential weight loss." )
p proofread("MargArEt cAn't eVen concIEve of foRegOing the pARty to finisH her paPEr.") # => "Margaret can't even conceive of foregoing the party to finish her paper." )
p proofread("IN the wINter, it's NICE to gO for a sliegh rIDe") # => "In the winter, it's nice to go for a sleigh ride")
p proofread("The mAN's ONly pURpose in lIFe is to decIEve his wIFe.") # => "The man's only purpose in life is to deceive his wife.")
p proofread("She LifTeD heR ViEL. The ShIeK LooKeD aT hER ExPeCtAnTlY") # => "She lifted her veil. The sheik looked at her expectantly")
p proofread("PetEr Was Not Sure of WHAt he WAs sEIEng. HE had To RIEn in HIs SHock.") # => "Peter was not sure of what he was seeing. He had to rein in his shock." )
p proofread("That is OnE lonG frieghT traiN thAt's Blocking The Railway Crossing.") # =>"That is one long freight train that's blocking the railway crossing.")
p proofread("") # => ""