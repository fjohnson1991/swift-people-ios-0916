//
//  Person.swift
//  swift-people
//
//  Created by Felicity Johnson on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    
    var name : String
    var ageInYears: Int?
    var skills : [String]
    var qualifiedTutor : Bool {
        
        if skills.count >= 4 {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
    
    init (name:String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
        self.skills = []
    }
    
    convenience init(name: String) {

        self.init(name:name, ageInYears: nil)
        
    }

    init() {
        
        self.name = "John Doe"
        self.ageInYears = nil
        self.skills = []
    }
    
    
    func celebrateBirthday() -> String {
        
        var happyBirthdayString = ""
        
        if ageInYears == nil {
            
            happyBirthdayString = "HAPPY BIRTHDAY, \(name.uppercased())!!!"
            
        } else {

            if let ageInYears = ageInYears {
                var newNum = ageInYears
                newNum += 1
                self.ageInYears = newNum
                happyBirthdayString = "HAPPY \(newNum)\(newNum.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
            }
            
            
        }
        
        return happyBirthdayString
    }
    
    func learnSkillBash() {

        if skills.contains("bash") {
            
            print("already contains")
            
        } else {
            
            skills.append("bash")
        }
    }
    
    
    func learnSkillXcode() {
        
        if skills.contains("Xcode") {
            
            print("already contains")
            
        } else {
            
            skills.append("Xcode")
        }

    }
    
    
    func learnSkillObjectiveC() {
        
        if skills.contains("Objective-C") {
            
            print("already contains")
            
        } else {
            
            skills.append("Objective-C")
        }
        
    }
    
    func learnSkillSwift() {
        
        if skills.contains("Swift") {
            
            print("already contains")
            
        } else {
            
            skills.append("Swift")
        }
        
    }
    
    
    func learnSkillInterfaceBuilder() {
        
        if skills.contains("Interface Builder") {
            
            print("already contains")
            
        } else {
            
            skills.append("Interface Builder")
        }
        
    }
    
}

