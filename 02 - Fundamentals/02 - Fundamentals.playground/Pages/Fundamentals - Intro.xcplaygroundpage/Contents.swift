class Person {
    
    var name: String!
    var age: Int!
    
    init(name:String, age: Int) {
        self.name = name
        self.age  = age
    }
    
    func bio(){
        print("My name is \(self.name), I am \(self.age) from Bournemouth")
        
    }
    
    func haveBirthday(){
        age = age+1
        
    }
    
}

let me = Person(name: "Grace", age: 22)

me.bio()

let John = Person(name: "John", age: 19)
John.haveBirthday()
John.age
John.bio()


