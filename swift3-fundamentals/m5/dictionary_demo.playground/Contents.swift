//: Playground - noun: a place where people can play

var airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air",
                "CPA": "Cathay Pacific" ]

// attempt to retrieve
if let result = airlines["SWA"] {
    print(result)
} else {
    print("Not found")
}

// add or change
airlines["DVA"] = "Discovery Airlines" // this will add
airlines["DVA"] = "Discovery Airways" // this will change

airlines

// remove
airlines["BHA"] =  nil

airlines

// simple for in
for entry in airlines {
    print(entry)
}

// separate key and value
for (key, value) in airlines {
    print(key)
    print(value)
}

