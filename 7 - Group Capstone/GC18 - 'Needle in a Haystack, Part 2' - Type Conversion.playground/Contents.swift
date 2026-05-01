//  🏔️ MTECH Code Challenge GC18: "Needle in a Haystack, Part 2" 🪡🌾
//  Concept: Practice moving between hexadecimal, string, and integer representations of the same data.

//  Instructions:
    //  In the previous challenge, you created two functions that could convert hexadecimal into integers and integers into Strings.
    //  Using those functions, create a new function that finds the index of a string within a hex encoded string.
    //  Your input will include two strings: a string which needs to be found (the "needle"), and another string which has previously been translated into hex (the "haystack").
    //  Return the first index of the needle within the haystack.

//  Examples:
    //  Input: ("68 65 6c 6c 6f 20 77 6f 72 6c 64", "world")
    //  Logic: The input translates to "hello world", with 77 representing "w". 77 is the fifth element (sixth index) of the hex input, so we return 6.
    //  Output: 6

    //  Input: ("47 6f 6f 64 62 79 65 20 77 6f 72 6c 64", "world")
    //  Output: 8

    //  Input: ("42 6f 72 65 64", "Bored")
    //  Output: 0

//  Notes:
    //  You can assume your "haystack" input will always contain your "needle" input.

//  ⌺ Black Diamond Challenge:
    //  Create another function. This function should return an array listing the position of each letter of the needle in the haystack, even if it is not contiguous. For example, if the input hexidecimal translates to "meteor shower," then the word "mower" would return [0, 4, 10, 11, 12].
    //  Like before, you can assume the input haystack will always cotain the needle.
    //  You only need to return the first appearance of each subsequent letter (i.e., in the above example, only the "o" in "meteor" is used, not the one in "shower").

// MARK: - Minimal compact solutions (non-destructive)

/// Minimal: first index of needle within hex haystack
func indexOfNeedle_min(_ haystackHex: String, _ needle: String) -> Int {
    let h = haystackHex.split(separator: " ").compactMap { Int($0, radix: 16) }
    let n = Array(needle.utf8).map(Int.init)
    guard n.count > 0, h.count >= n.count else { return 0 }
    for i in 0...(h.count - n.count) where h[i..<(i + n.count)].elementsEqual(n) { return i }
    return 0
}

/// Minimal: scattered positions of each letter of the needle
func scatteredPositions_min(_ haystackHex: String, _ needle: String) -> [Int] {
    let h = haystackHex.split(separator: " ").compactMap { Int($0, radix: 16) }
    var start = 0, out: [Int] = []
    for b in needle.utf8 {
        if let idx = h[start...].firstIndex(of: Int(b)) {
            out.append(idx); start = idx + 1
        } else { break }
    }
    return out
}

// Quick sanity checks for minimal versions
print("Example 1 ->", indexOfNeedle_min("68 65 6c 6c 6f 20 77 6f 72 6c 64", "world")) // 6
print("Example 2 ->", indexOfNeedle_min("47 6f 6f 64 62 79 65 20 77 6f 72 6c 64", "world")) // 8
print("Example 3 ->", indexOfNeedle_min("42 6f 72 65 64", "Bored")) // 0
print("Example BD ->", scatteredPositions_min("6d 65 74 65 6f 72 20 73 68 6f 77 65 72", "mower")) // [0,4,10,11,12]
