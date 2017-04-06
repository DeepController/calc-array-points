//
//  main.swift
//  CalcArrayPoints
//
//  Created by William on 4/4/17.
//  Copyright © 2017 Yang Wang. All rights reserved.
//

import Foundation

/**  Functions  ********************************************************************/

//
// Part 1
//

func add(left : Int?, right : Int?) -> Int? {
    guard left != nil && right != nil else { return nil }
	return left! + right!
}

func subtract(left : Int?, right : Int?) -> Int? {
    guard left != nil && right != nil else { return nil }
	return left! - right!
}

func multiply(left : Int?, right : Int?) -> Int? {
    guard left != nil && right != nil else { return nil }
	return left! * right!
}

func divide(left : Int?, right : Int?) -> Int? {
    guard left != nil && right != nil && right! != 0 else { return nil }
	return left! / right!
}

func mathOperation(left : Int?, right : Int?, operation : (Int?, Int?) -> Int?) -> Int? {
	return operation(left, right)
}

//
// Part 2
//

func add(array : [Int?]?) -> Int? {
    guard array != nil && array!.count != 0 else { return nil }
    var sum : Int = 0
    for num in array! {
        guard num != nil else { return nil }
        sum += num!
    }
    return sum
}

func multiply(array : [Int?]?) -> Int? {
    guard array != nil && array!.count != 0 else { return nil }
    var product : Int = 1
    for num in array! {
        guard num != nil else { return nil }
        product *= num!
    }
    return product
}

func count(array : [Int?]?) -> Int? {
    guard array != nil else { return nil }
    for num in array! {
        guard num != nil else { return nil }
    }
    return array!.count
}

func average(array : [Int?]?) -> Int? {
    let sum : Int? = add(array: array)
    let num : Int? = count(array: array)
    guard sum != nil && num != nil && num! != 0 else { return nil }
    return sum! / num!
}

func reduce(array : [Int?]?, operation : ([Int?]?) -> Int?) -> Int? {
    return operation(array)
}

//
// Part 3
//

func validPoint(_ p1 : (Int?, Int?)?, _ p2 : (Int?, Int?)?) -> Bool {
    return p1 != nil && p2 != nil
        && p1?.0 != nil && p1?.1 != nil
        && p2?.0 != nil && p2?.1 != nil
}

func add(p1 : (Int?, Int?)?, p2 : (Int?, Int?)?) -> (Int, Int)? {
    guard validPoint(p1, p2) else { return nil }
    return (p1!.0! + p2!.0!, p1!.1! + p2!.1!)
}

func subtract(p1 : (Int?, Int?)?, p2 : (Int?, Int?)?) -> (Int, Int)? {
    guard validPoint(p1, p2) else { return nil }
    return (p1!.0! - p2!.0!, p1!.1! - p2!.1!)
}

func validPoint(_ p1 : [String : Double?]?, _ p2 : [String : Double?]?) -> Bool {
    return p1 != nil && p2 != nil
        && p1!["x"] != nil && p1!["y"] != nil
        && p2!["x"] != nil && p2!["y"] != nil
}

func add(p1 : [String : Double?]?, p2 : [String : Double?]?) -> [String : Double]? {
    guard validPoint(p1, p2) else { return nil }
    return ["x" : p1!["x"]!! + p2!["x"]!!, "y" : p1!["y"]!! + p2!["y"]!!]
}

func subtract(p1 : [String : Double?]?, p2 : [String : Double?]?) -> [String : Double]? {
    guard validPoint(p1, p2) else { return nil }
    return ["x" : p1!["x"]!! - p2!["x"]!!, "y" : p1!["y"]!! - p2!["y"]!!]
}

func validPoint(_ p1 : [String : Int?]?, _ p2 : [String : Int?]?) -> Bool {
    return p1 != nil && p2 != nil
        && p1!["x"] != nil && p1!["y"] != nil
        && p2!["x"] != nil && p2!["y"] != nil
}

func add(p1 : [String : Int?]?, p2 : [String : Int?]?) -> [String : Int]? {
    guard validPoint(p1, p2) else { return nil }
    let p11 = ["x" : Double((p1!["x"]!!)), "y" : Double((p1!["y"]!!))]
    let p22 = ["x" : Double((p2!["x"]!!)), "y" : Double((p2!["y"]!!))]
    let result = add(p1: p11, p2: p22)
    guard result != nil else { return nil }
    return ["x" : Int((result!["x"]!)), "y" : Int((result!["y"]!))]
}

func subtract(p1 : [String : Int?]?, p2 : [String : Int?]?) -> [String : Int]? {
    guard validPoint(p1, p2) else { return nil }
    let p11 = ["x" : Double((p1!["x"]!!)), "y" : Double((p1!["y"]!!))]
    let p22 = ["x" : Double((p2!["x"]!!)), "y" : Double((p2!["y"]!!))]
    let result = subtract(p1: p11, p2: p22)
    guard result != nil else { return nil }
    return ["x" : Int((result!["x"]!)), "y" : Int((result!["y"]!))]
}

//var a = ["x" : 2, "y" : 6]
//var b = ["x" : 5, "y" : 4]
//
//var result = add(p1 : a, p2 : b)
//print(result!["x"]!)



























