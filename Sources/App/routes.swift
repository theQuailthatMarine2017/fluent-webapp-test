import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    router.post(User.self, at: "create", "user") { (req, data) -> Future<User> in

        return try req.content.decode(User.self).flatMap(to: User.self, { (user) -> EventLoopFuture<User> in

            return user.save(on: req)
        })
    }

}
