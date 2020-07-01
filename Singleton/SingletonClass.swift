//
//  ViewController.swift
//  Singleton
//
//  Created by Tong Yi on 5/19/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

/* Properties of Singleton:
 1. One Point of Contact
 2. Publicly Accessible
 3. Unable to create/use separate instance
 
  a class only has one instance // should point to the same address
  there is only one global access point to that class
  thread - safty // not a sigleton property
  use lazy loading to create: only give memory when you only have to
 5. ~ global variable ~
 6. class is private//static?
 7. class initializer is private
 8. it has the instance inside itself ?
 */
/*ADVANTAGES
    1. thread-safty //
    2. global one point access
        The singleton class encapsulates its unique instance, prevents other objects from instantiating itself, and ensures that all objects have access to the specific unique instance
    3. point to the same memory location, mantain stability
    4. save memory. effcient way, clean way
    5. you are force to use the singleton which means use the class without confused
    
 */
/*DISADVANTAGES
    1. lose the flexability (same memory location -> one change, then all change)
    2. whether you use it or not, it always in the memory, class is never released
    3.
 */
import UIKit

//var singletonInstance = SingletonClass.share
//var fileManerger = FileManager.default
class SingletonClass//: UIViewController
{
    //lauguage property : Type annotation, type inferrence, type safety
    // read and write
    static var `default`: SingletonClass //when define in a closure, it infers to get
    {
//        get
//        {
            return SingletonClass()
//        }
    } //only can be accessed by the class name
      // static (swift)                        // can not be overrided
                                    // global access(depend on the level of class)
                            // different people accessing at the same or different time , it's safe.
    
    
    let name: String
    let address: String
    init() {
        name = "Tong"
        address = "11111 sw"
        // cannot use this init, can only be called inside class
    }
}

class MatherClass: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
            //if the default is not get only, the singletonClass.default does not change?
        var single = SingletonClass()
        var second = SingletonClass.default
//        let same = (single === second)
//        SingletonClass.default = MatherClass()
//        SingletonClass.default = "Tong"
//        var singleObject = SingletonClass()
        SingletonClass.default = single   //equal means initialization //initializer means sign value to the property
        single = second
//        let fileM = FileManager.default
//        second.address = "1222 NW "
    
    }
    
    
}
