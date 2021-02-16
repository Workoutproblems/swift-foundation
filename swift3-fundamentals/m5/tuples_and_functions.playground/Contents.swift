// Returning a tuple from a function

func randomAlbum() -> (albumTitle: String, seconds: Int) {
    // code goes here...
    let title = "And In The Endless Pause There Came The Sound Of Bees"
    let duration = 2462
    return (title, duration)
}



// later...
let (nextTitle, length) = randomAlbum()

print("Playing next: \(nextTitle) and it's \(length / 60)m \(length % 60)s ")
