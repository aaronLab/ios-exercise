import Foundation

func solution(_ answers:[Int]) -> [Int] {
    // 결과 리스트
    var scores = [1:0, 2:0, 3:0]
    
    // 찍는 방식
    let answer = [
        1: [1, 2, 3, 4, 5],
        2: [2, 1, 2, 3, 2, 4, 2, 5],
        3: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    for (index, value) in answers.enumerated() {
        if value == answer[1]![index % 5] {
            scores[1]! += 1
        }
        
        if value == answer[2]![index % 8] {
            scores[2]! += 1
        }
        
        if value == answer[3]![index % 10] {
            scores[3]! += 1
        }
    }
    
    return
        scores
        .sorted{ $0.key < $1.key }  // key 오름차순 정렬
        .filter{ $0.value == scores.values.max() }  // values max 값 대조
        .map{ $0.key }  // key 값 array 반환
}

solution([1, 2, 3, 4, 5])
solution([1, 3, 2, 4, 2])
