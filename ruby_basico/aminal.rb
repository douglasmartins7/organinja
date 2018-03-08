
class Animal
  attr_accessor :nome
  def come(racao)
    puts nome + ' comendo ' + racao
  end
end

class Dog < Animal
  def fala
    puts 'au au'
  end
end

class Cat < Animal
  def fala
    puts 'miau'
  end
end

gato = Cat.new
gato.nome = 'Tom'
gato.come('Whiskas')
gato.fala

dog = Dog.new
dog.nome = 'Spike'
dog.come('Bife Ancho')
dog.fala
