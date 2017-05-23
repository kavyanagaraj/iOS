//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var name : String
    var health = 100
    init(name : String) {
        self.name = name
    }
    func displayHealth(){
        print(self.health)
    }
}



var dog = Animal(name : "Benzi")
print(dog.health)

class Cat: Animal{
    init(cat_name : String) {
      super.init(name : cat_name)
      self.health = 150
    }
    func growl() -> Cat{
        print("Rawr!")
        return self
    }
    func run() -> Cat{
        print("Running")
        self.health -= 10
        return self
    }
}

class Cheetah : Cat{
    init(cheetah_name : String) {
        super.init(cat_name : cheetah_name)
    }

    override func run() -> Cheetah {
        print("Running Fast \(self.health)")
        if(self.health >= 50){
           self.health -= 50
        }
        else{
            print("Not enough energy to run \(self.health)")
        }
        return self
    }
    func sleep(){
        if(self.health < 200){
          self.health += 50
        }
    }
}

class Lion : Cat{
    init(lion_name : String) {
        super.init(cat_name : lion_name)
        self.health = 200
    }
    override func growl() -> Lion {
        print("ROAR!! Jungle King")
        return self
    }
}

var cheetah1 = Cheetah(cheetah_name: "qwerty")
cheetah1.run().run().run().run()

var lion1 = Lion(lion_name: "asdfgh")
lion1.run().run().run().growl()
