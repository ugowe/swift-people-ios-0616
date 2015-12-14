//  Int+ordinalSpec.swift

import Quick
import Nimble
@testable import swift_people

class IntOrdinalSpec: QuickSpec {
    override func spec() {
        describe("Int+ordinal") {
            describe("ordinal") {
                it("should return 'st' for 21") {
                    let twentyOne = 21
                    
                    expect(twentyOne.ordinal()).to(match("st"))
                }
                
                it("should return 'nd' for 22") {
                    let twentyTwo = 22
                    
                    expect(twentyTwo.ordinal()).to(match("nd"))
                }
                
                it("should return 'rd' for 23") {
                    let twentyThree = 23
                    
                    expect(twentyThree.ordinal()).to(match("rd"))
                }
                
                it("should return 'th' for 24-30") {
                    let twentyFour = 24
                    let twentyFive = 25
                    let twentySix = 26
                    let twentySeven = 27
                    let twentyEight = 28
                    let twentyNine = 29
                    let thirty = 30
                    
                    expect(twentyFour.ordinal()).to(match("th"))
                    expect(twentyFive.ordinal()).to(match("th"))
                    expect(twentySix.ordinal()).to(match("th"))
                    expect(twentySeven.ordinal()).to(match("th"))
                    expect(twentyEight.ordinal()).to(match("th"))
                    expect(twentyNine.ordinal()).to(match("th"))
                    expect(thirty.ordinal()).to(match("th"))
                }
                
                it("should return 'th' for 11-13") {
                    let eleven = 11
                    let twelve = 12
                    let thirteen = 13
                    
                    expect(eleven.ordinal()).to(match("th"))
                    expect(twelve.ordinal()).to(match("th"))
                    expect(thirteen.ordinal()).to(match("th"))
                }
                
                it("should return 'st' for 101") {
                    let oneHundredFirst = 101
                    
                    expect(oneHundredFirst.ordinal()).to(match("st"))
                }
                
                it("should return 'th' for 1024") {
                    let oneThousandTwentyFour = 1024
                    
                    expect(oneThousandTwentyFour.ordinal()).to(match("th"))
                }
            }
        }
    }
}
