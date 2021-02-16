// Changing Argument Labels

func calculateDifference(firstAmount: Int, secondAmount: Int) -> Int {
    if firstAmount > secondAmount {
        return firstAmount - secondAmount
    } else {
        return secondAmount - firstAmount
    }
}

let result = calculateDifference(firstAmount: 27391, secondAmount: 7863)

print("The difference is: \(result)")

