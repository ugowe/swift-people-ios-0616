//  Person.swift

import Foundation

class Person {
    let name: String
    private(set) var ageInYears: Int?
    private(set) var skills = Set<String>()
    
    var qualifiedTutor: Bool {
        get { return skills.count >= 4 }
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe")
    }
    
    func celebrateBirthday() -> String {
        if var age = self.ageInYears {
            age++
            self.ageInYears = age
            let ordinal = age.ordinal()
            let message = "HAPPY \(age)\(ordinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
            return message
        } else {
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }
    
    func learnSkillBash() {
        skills.insert("bash")
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        skills.insert("Interface Builder")
    }
}




