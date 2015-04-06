# Pengo Framework

Build status

[![Build Status](https://travis-ci.org/penlook/pengo.svg)](https://travis-ci.org/penlook/pengo)
[![GoDoc](https://godoc.org/github.com/penlook/pengo?status.svg)](https://godoc.org/github.com/penlook/pengo)

![Pengo](http://s16.postimg.org/g7no9g5k5/Capture.png)

###Taste of Pengo

```go
import (
	. "github.com/penlook/pengo"
)

@controller App

@route /app/:name
@method GET
func Home() {

	// Pass variable to template
	@title = "Index Page"
	@sample = "Welcome to application home"
	@image = "https://golang.org/doc/gopher/frontpage.png"

	// Call parent controller function
	@Pick("Before call pk")

	// SELECT * FROM `User` WHERE id=1
	user := #User.Find(1)

	// Print username
	Print(user.Name)
}
```

###Feature (In Progress)

1. Mvc Architecture
2. Scalable by using C-CPP
3. Flexible template engine
4. Lazy model communication
5. Tracking performance

###Road map

1. MVC Architecture (testing)
2. Template engine (testing)
3. Hot-code reload (not started)
4. Improve performance (implementing)
5. Command line for development (implementing)
6. Model engine (not started)
7. Unit - Integration test structure (implementing)
8. Multiple languages (implementing)
9. Documentation (not started)
10. Flow Tracking (testing)
11. Extend framework by using C (implementing)
12. Annotation Parser (not started)

####Database Model

1. MySQL      -   Table      - ORM  (testing)
2. Cassandra  -   Table      - CQL  (not started)
3. MongoDB    -   Document   - ODM  (implemeting)
4. CouchDB    -   Document          (not started)
5. Memcache   -   Key-value         (not started)
4. Redis      -   Key-value         (implemeting)
5. Cayley     -   Graph             (not started)

###Quality Assurance

1. Unit Testing
2. Integration Testing
3. Benchmark Performance
2. Continuous Integration
3. Coding Convention
4. Documentation


