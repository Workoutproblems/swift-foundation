// Adding Functionality with Extensions

extension String {
    func removeSpaces() -> String {
        let filteredCharacters = self.filter { $0 != " " }
        return String(filteredCharacters)
    }
}

// strings
let album = "Decks and drums and rock and roll"
let scriptio = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet"
let phrase = "Love is now here"

print(album.removeSpaces())
print(scriptio.removeSpaces())
print(phrase.removeSpaces())
