//  PersonSpec.swift

import Quick
import Nimble
@testable import swift_people

class PersonSpec: QuickSpec {
    override func spec() {
        describe("Person") {
            
            var joe = Person()
            var tim = Person()
            var jim = Person()
            var tom = Person()
            var mark = Person()
            
            var jenny = Person()
            var johnDoe = Person()
            
            beforeEach() {
                joe = Person.init(name: "Joe", ageInYears: 25)
                tim = Person.init(name: "Tim", ageInYears: 65535)
                jim = Person.init(name: "Jim", ageInYears: nil)
                tom = Person.init(name: "Tom", ageInYears: nil)
                mark = Person.init(name: "Mark", ageInYears: 29)
            
                jenny = Person(name: "Jenny")
                johnDoe = Person()
            }
            
            describe("designated initializer") {
                it("should set name") {
                    expect(joe.name).to(match("Joe"))
                    expect(tim.name).to(match("Tim"))
                    expect(jim.name).to(match("Jim"))
                    expect(tom.name).to(match("Tom"))
                    expect(mark.name).to(match("Mark"))
                }
                
                it("should set ageInYears") {
                    expect(joe.ageInYears).to(equal(25))
                    expect(tim.ageInYears).to(equal(65535))
                    expect(mark.ageInYears).to(equal(29))
                }
                
                it("should accept an optional for ageInYears") {
                    expect(jim.ageInYears).to(beNil())
                    expect(tom.ageInYears).to(beNil())
                }
                
                it("should establish skills as empty") {
                    expect(mark.skills).to(beEmpty())
                }
            }
            
            describe("convenience initializer") {
                it("should set name") {
                    expect(jenny.name).to(match("Jenny"))
                }
                
                it("should set ageInYears to nil") {
                    expect(jenny.ageInYears).to(beNil())
                }
                
                it("should initialize skills as empty") {
                    expect(jenny.skills).to(beEmpty())
                }
            }
            
            describe("default initializer") {
                it("should set name to John Doe") {
                    expect(johnDoe.name).to(match("John Doe"))
                }
                
                it("should set ageInYears to nil") {
                    expect(johnDoe.ageInYears).to(beNil())
                }
                
                it("should initialize skills as empty") {
                    expect(johnDoe.skills).to(beEmpty())
                }
            }
            
            describe("celebrateBirthday") {
                it("should increment mark's age by one to 30") {
                    mark.celebrateBirthday()
                    
                    expect(mark.ageInYears).to(equal(30))
                }
                
                it("should increment tim's age by one to 65536") {
                    tim.celebrateBirthday()
                    
                    expect(tim.ageInYears).to(equal(65536))
                }
                
                it("should leave jim's nil age as nil") {
                    jim.celebrateBirthday()
                    
                    expect(jim.ageInYears).to(beNil())
                }
                
                it("should return a birthday message for mark including his new age of 30") {
                    let expected = "HAPPY 30TH BIRTHDAY, MARK!!!"
                    
                    expect(mark.celebrateBirthday()).to(match(expected))
                }
                
                it("should return a birthday message for tim including his new age of 65536") {
                    let expected = "HAPPY 65536TH BIRTHDAY, TIM!!!"
                    
                    expect(tim.celebrateBirthday()).to(match(expected))
                }
                
                it("should return a birthday message for jim that doesn't include an age") {
                    let expected = "HAPPY BIRTHDAY, JIM!!!"
                    
                    expect(jim.celebrateBirthday()).to(match(expected))
                }
            }
            
            describe("learnSkillBash") {
                it("should add 'bash' to skills") {
                    jim.learnSkillBash()
                    
                    expect(jim.skills).to(contain("bash"))
                }
                
                it("should not add 'bash' to skills more than once") {
                    tom.learnSkillBash()
                    tom.learnSkillBash()
                    
                    expect(tom.skills).to(contain("bash"))
                    expect(tom.skills.count).to(equal(1))
                }
            }
            
            describe("learnSkillXcode") {
                it("should add 'bash' to skills") {
                    jim.learnSkillBash()
                    
                    expect(jim.skills).to(contain("bash"))
                }
                
                it("should not add 'bash' to skills more than once") {
                    tom.learnSkillBash()
                    tom.learnSkillBash()
                    
                    expect(tom.skills).to(contain("bash"))
                    expect(tom.skills.count).to(equal(1))
                }
            }

            describe("learnSkillObjectiveC") {
                it("should add 'Objective-C' to skills") {
                    jim.learnSkillObjectiveC()
                    
                    expect(jim.skills).to(contain("Objective-C"))
                }
                
                it("should not add 'Objective-C' to skills more than once") {
                    tom.learnSkillObjectiveC()
                    tom.learnSkillObjectiveC()
                    
                    expect(tom.skills).to(contain("Objective-C"))
                    expect(tom.skills.count).to(equal(1))
                }
            }

            describe("learnSkillSwift") {
                it("should add 'Swift' to skills") {
                    jim.learnSkillSwift()
                    
                    expect(jim.skills).to(contain("Swift"))
                }
                
                it("should not add 'Swift' to skills more than once") {
                    tom.learnSkillSwift()
                    tom.learnSkillSwift()
                    
                    expect(tom.skills).to(contain("Swift"))
                    expect(tom.skills.count).to(equal(1))
                }
            }
            
            describe("learnSkillInterfaceBuilder") {
                it("should add 'Interface Builder' to skills") {
                    jim.learnSkillInterfaceBuilder()
                    
                    expect(jim.skills).to(contain("Interface Builder"))
                }
                
                it("should not add 'Interface Builder' to skills more than once") {
                    tom.learnSkillInterfaceBuilder()
                    tom.learnSkillInterfaceBuilder()
                    
                    expect(tom.skills).to(contain("Interface Builder"))
                    expect(tom.skills.count).to(equal(1))
                }
            }

            describe("qualifiedTutor") {
                it("should return false if the person has no skills") {
                    expect(johnDoe.qualifiedTutor).to(beFalse())
                }
                
                it("should return false if the person has three skills") {
                    mark.learnSkillBash()
                    mark.learnSkillXcode()
                    mark.learnSkillObjectiveC()
                    
                    expect(mark.skills.count).to(equal(3))
                    expect(mark.qualifiedTutor).to(beFalse())
                }
                
                it("should return true if the person has four skills") {
                    jim.learnSkillBash()
                    jim.learnSkillXcode()
                    jim.learnSkillObjectiveC()
                    jim.learnSkillSwift()

                    expect(jim.skills.count).to(equal(4))
                    expect(jim.qualifiedTutor).to(beTrue())
                }
                
                it("should return true if the person has five skills") {
                    tom.learnSkillBash()
                    tom.learnSkillXcode()
                    tom.learnSkillObjectiveC()
                    tom.learnSkillSwift()
                    tom.learnSkillInterfaceBuilder()
                    
                    expect(tom.skills.count).to(equal(5))
                    expect(tom.qualifiedTutor).to(beTrue())
                }
            }
        }
    }
}

