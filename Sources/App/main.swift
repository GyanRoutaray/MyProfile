import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())
drop.get("gyan") { request in
    return "Hello Gyan"
}
drop.get("home"){ request in
    return try drop.view.make("home.html")
}
drop.get("about"){ request in
    return try drop.view.make("about.html")
}
drop.run()
