class Vehicle {
    let tires:Int, wings:Int, doors:Int
    
    init(tires:Int, wings:Int, doors:Int) {
        self.tires = tires
        self.wings = wings
        self.doors = doors
    }
    
    func go() {
        print("It goes like a car")
    }
}

class Car: Vehicle {
    init(doors: Int) {
        super.init(tires: 4, wings: 0, doors: doors)
    }
}

class Airplane: Vehicle {
    init(tires: Int, doors: Int) {
        super.init(tires: tires, wings: 2, doors: doors)
    }
    
    override func go() {
        print("It goes like an airplane")
    }
}


let coupe = Car(doors: 2)
let sedan = Car(doors: 4)
let jumbo = Airplane(tires: 8, doors:3)

coupe.go()
sedan.go()
jumbo.go()