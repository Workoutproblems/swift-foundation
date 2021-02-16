//: Dictionaries with Tuples

var airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air",
                "CPA": "Cathay Pacific" ]

// use a tuple to access the key and value
for (firstIsKey, secondIsValue) in airlines {
    print("The key is \(firstIsKey) and the value is: \(secondIsValue)")
}

