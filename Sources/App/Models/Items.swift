
import Vapor
import FluentSQLite

final class Items: Codable {
    
    var id: Int?
    var product: String
    var price: Int
    var stock: Int
    var available: Bool
    var merchant: String
    
    init(name: String, cost: Int, quantity: Int, vendor: String) {
        
        product = name
        price = cost
        stock = quantity
        merchant = vendor
        
        if stock > 1 {
            
            available = true
            
        } else {
            
            available = false
        }
        
    }
    
}
// Enable SQLite Database For Class Object Items

extension Items: SQLiteModel {}

// Enable Migration of data to SQLite Database

extension Items: Migration {}
