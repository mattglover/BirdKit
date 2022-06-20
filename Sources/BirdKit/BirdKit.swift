public protocol BirdKitDelegate: AnyObject {
    func birdKit(_: BirdKit, didLoadAllAvianSpecies: [AvianSpecies])
}

public class BirdKit {
    
    public var delegate: BirdKitDelegate?
    public private(set) var allSpecies: [AvianSpecies] = []
    private var dataProvider = AvianSpeciesDataProvider()

    public init(withDelegate delegate: BirdKitDelegate? = nil) {
        self.delegate = delegate
        loadData()
    }
    
    private func loadData() {
        allSpecies = dataProvider.loadAllAvianSpecies()
        delegate?.birdKit(self, didLoadAllAvianSpecies: allSpecies)
    }
}

