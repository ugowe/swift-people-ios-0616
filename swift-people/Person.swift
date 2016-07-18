//
//  Person.swift
//  
//
//  Created by Ugowe on 7/15/16.
//
//

import Foundation

class Person {
    let name: String
    
    
    private(set) var ageInYears:Int?
    private(set) var skills:[String] = []
    var qualifiedTutor: Bool {
        return skills.count >= 4
    }
    
    //Designated Initializer
    init(name: String, ageInYears:Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    //Convenience Initializer
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    //Default Initializer
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        var birthdayMessage: String
        if var age = self.ageInYears {
            age += 1
            self.ageInYears = age
            let ordinal = age.ordinal()
            birthdayMessage = "HAPPY \(age)\(ordinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
        } else  {
            birthdayMessage = "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
        return birthdayMessage
    }
    
    func learnSkillBash() {
        if skills.contains("bash") == false {
           skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if skills.contains("Xcode") == false {
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if skills.contains("Objective-C") == false {
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if skills.contains("Swift") == false {
            skills.append("Swift")
        }

    }
    
    func learnSkillInterfaceBuilder() {
        if skills.contains("Interface Builder") == false {
            skills.append("Interface Builder")
        }

    }
    
    

}









