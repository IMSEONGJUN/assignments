import UIKit

class Animal {
    var brain = true
    var legs = 0
}

class Human: Animal {
    override init(){
        super.init()
        self.legs = 2
        self.brain = super.brain
    }
}

class Pet : Animal {
    var fleas = 0
    override init() {
        super.init()
        self.legs = 4
        self.brain = super.brain
    }
}

class Dog : Pet {
    override init() {
        super.init()
        self.fleas = 8
        self.legs = super.legs
        self.brain = super.brain
    }
}

class Cat : Pet {
    override init() {
        super.init()
        self.fleas = 4
        self.legs = super.legs
        self.brain = super.brain
    }
}

var cat = Cat()
cat.legs
cat.fleas

var pet : Pet = Dog()
pet.fleas

