import Foundation

public struct AvianSpecies: Decodable {
    
    public let bandCode4: String
    public let bandCode6: String
    public let scientificName: String
    public let commonName: String
    
    public init(bandCode4: String, bandCode6: String, scientificName: String, commonName: String) {
        self.bandCode4 = bandCode4
        self.bandCode6 = bandCode6
        self.scientificName = scientificName
        self.commonName = commonName
    }
}

extension AvianSpecies: Comparable, Hashable {
    
    public static func < (lhs: AvianSpecies, rhs: AvianSpecies) -> Bool {
        lhs.commonName < rhs.commonName
    }
    
    public static func == (lhs: AvianSpecies, rhs: AvianSpecies) -> Bool {
        return lhs.bandCode4 < rhs.bandCode4 && lhs.bandCode6 < rhs.bandCode6
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(bandCode4)
        hasher.combine(bandCode6)
    }
}
