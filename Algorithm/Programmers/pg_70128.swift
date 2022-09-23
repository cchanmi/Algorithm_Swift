//
//  pg_70128.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/70128
//  내적

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var b = b
    return a.map{ $0 * b.removeFirst() }.reduce(0, +)
}


/*
 0.15ms / 16.6MB
 */
