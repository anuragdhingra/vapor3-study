import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get("name") { req in
        return "Ethan Hunt"
    }
    
    router.get("age") { req in
        return 23
    }
    
    router.get("json") { req in
        return Person(name: "Martin J. Lasek", age: 26)
    }
}


// Important: your class or struct conforms to Content
struct Person: Content {
    var name: String
    var age: Int
}
