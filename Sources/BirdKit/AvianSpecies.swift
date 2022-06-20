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
