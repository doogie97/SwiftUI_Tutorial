//
//  ModelData.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
}

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("파일 읽어올 수 없음")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("데이터 변환 실패")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("디코딩 실패")
    }
}
