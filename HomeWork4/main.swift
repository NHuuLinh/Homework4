//
//  main.swift
//  HomeWork4
//
//  Created by LinhMAC on 07/07/2023.
//

import Foundation
//Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
func checkOddEven (in array: [Int]) -> (Int?, Int?) {
    var firstOddPos: Int?
    var lastEvenPos: Int?
    for (index, number) in array.enumerated() {
        if number % 2 == 1 && firstOddPos == nil {
            firstOddPos = index
        }
        if number % 2 == 0 {
            lastEvenPos = index
        }
    }
    return (firstOddPos, lastEvenPos)
}
let numbers = [2392, 434, 123, 5934, 97, 9, 12, 19, 11]
let (firstOddPos, lastEvenPos) = checkOddEven(in: numbers)
if let firstOddPos = firstOddPos {
    let actualPosition = firstOddPos + 1
    print("Vị trí đầu tiên của số lẻ là: \(actualPosition)")
} else {
    print("Không có số lẻ trong mảng.")
}
if let lastEvenPos = lastEvenPos {
    // do vị trí được tính từ 0, nên ta +1 đơn vị
    let actualPosition = lastEvenPos + 1
    print("Vị trí cuối cùng của số chẵn là: \(actualPosition)")
} else {
    print("Không có số chẵn trong mảng.")
}
// tìm giá trị lớn nhất, nhỏ nhất
func findMinAndMax(in array: [Int]) -> (Int, Int)? {
    guard let firstNumb = array.first else {
        return nil // Trả về nil nếu mảng rỗng
    }
    var minNumb = firstNumb
    var maxNumb = firstNumb
    for numb in array {
        if numb < minNumb {
            minNumb = numb
        }
        if numb > maxNumb {
            maxNumb = numb
        }
    }
    return (minNumb, maxNumb)
}
let numb = [8, 3, 10, -5, 2, 15, 1]
if let (minNumb, maxNumb) = findMinAndMax(in: numb) {
    print("Số nhỏ nhất là: \(minNumb)")
    print("Số lớn nhất là: \(maxNumb)")
} else {
    print("Mảng rỗng.")
}
//Mini game
func miNiGame() {
    let randomNumber = Int.random(in: 1...100)
    var guessedNumber: Int?
    while guessedNumber != randomNumber {
        print("Nhập một số từ 1 đến 100:")
        if let input = readLine(), let number = Int(input) {
            guessedNumber = number
            switch guessedNumber {
            case randomNumber:
                print("Chúc mừng! Bạn đã đoán đúng số.")
            case let guessedNumber where guessedNumber! < randomNumber:
                print("Số bạn đoán bé quá.")
            case let guessedNumber where guessedNumber! > randomNumber:
                print("Số bạn đoán lớn quá.")
            default:
                print("Đầu vào không hợp lệ. Vui lòng nhập một số từ 1 đến 100.")
            }
        }
        print("số ngẫu nhiền là : \(randomNumber) ")
    }
}
miNiGame()
 
