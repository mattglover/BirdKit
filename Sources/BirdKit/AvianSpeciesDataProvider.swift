import Foundation

public class AvianSpeciesDataProvider {
    
    private let filename = "AvianSpeciesData"
    
    public func loadAllAvianSpecies() -> [AvianSpecies] {
        guard let dataFileURL = Bundle.module.url(forResource: filename, withExtension: "json") else {
            print("Unable to find AvianSpeciesData.json")
            return []
        }
        
        guard let data = try? Data(contentsOf: dataFileURL) else {
            print("Unable load contents as data")
            return []
        }
        
        var result: [AvianSpecies] = []
        do {
            result = try JSONDecoder().decode([AvianSpecies].self, from: data)
        } catch {
            print(error)
        }

        return result
    }
}
