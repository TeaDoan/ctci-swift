import XCTest
import ArrayString

class ArrayStringTests: XCTestCase {

    /**
     1: Is Unique

     Implement an algorihtm to determine if a string has all unique characters. What if you cannot use additional data structures?
     */
    func test_01_AllUnique() {
        let abcd = "abcdefABCDEF"
        XCTAssert(isUnique1(abcd))
        XCTAssert(isUnique2(abcd))

        let hello = "hello"
        XCTAssertFalse(isUnique1(hello))
        XCTAssertFalse(isUnique2(hello))
    }

    /**
     2: Check Permutation

     Given two strings, write a method to decide if one is permutation of the other.
     */
    func test_02_CheckPermutation()  {
        XCTAssert(isPermutation("abcde", "ebacd"))
        XCTAssert(isPermutation("abbba", "babab"))

        XCTAssertFalse(isPermutation("hello", "world"))
        XCTAssertFalse(isPermutation("hello", "world!"))
    }

    /**
     3: URLify

     Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string.
     */
    func test_03_Urlify()  {
        XCTAssertEqual(urlify("Mr John Smith  ", 13), "Mr%20John%20Smith")

        // with whitespace
        XCTAssertEqual(urlify("  Mr John Smith   ", 13), "Mr%20John%20Smith")
    }

    /**
     4: Palindrom Permutation

     Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrom does not need to be limited to just dictionary words.
     */
    func test_04_PalindromPermutation() {
        XCTAssert(isPalindromePermutation("Tact Coa"))
        XCTAssert(isPalindromePermutation2("abba"))
        XCTAssert(isPalindromePermutation("Kasur Nababan rusak"))
        XCTAssertFalse(isPalindromePermutation("hello world"))

        XCTAssert(isPalindromePermutation2("Tact Coa"))
        XCTAssert(isPalindromePermutation2("ABBA"))
        XCTAssert(isPalindromePermutation2("Kasur Nababan rusak"))
        XCTAssertFalse(isPalindromePermutation2("hello world"))
    }

    /**
     5: One Away

     There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
     */
    func test_05_OneAway() {
        XCTAssert(isOneAway("test", "test"))
        XCTAssert(isOneAway("pale", "ple"))
        XCTAssert(isOneAway("pales", "pale"))
        XCTAssert(isOneAway("bake", "cake"))
        XCTAssertFalse(isOneAway("pales", "bake"))
        XCTAssertFalse(isOneAway("hell", "ohello"))
    }

    /**
     6: String Compression

     Implement a method to perform basic string compression using the counts of repeated characters. For example, the string `aabccccaaa` would become `a2b1c5a3`. If the 'compressed' string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a -z)
     */
    func test_06_StringCompression() {
        XCTAssertEqual(compress("aabccccaaa"), "a2b1c4a3")
        XCTAssertEqual(compress("aa"), "a2")
        XCTAssertEqual(compress("abcde"), "abcde")
    }

    /**
     7: Rotate Matrix

     Given an image represented by an NxN matric, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
     */
    func _test_07_RotateMatrix() {
        let matrix1 = [ [1] ]
        let expected1 = [ [1] ]

        assertMatrixEqual(rotate(matrix: matrix1), expected1)

        let matrix2 = [
            [1, 2],
            [3, 4],
        ]
        let expected2 = [
            [3, 1],
            [4, 2],
        ]
        assertMatrixEqual(rotate(matrix: matrix2), expected2)

        let matrix3 = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9],
        ]
        let expected3 = [
            [7, 4, 1],
            [8, 5, 2],
            [9, 6, 3],
        ]
        assertMatrixEqual(rotate(matrix: matrix3), expected3)
    }

    private func assertMatrixEqual<T: Equatable>(_ lhs: [[T]], _ rhs: [[T]]) {
        for (index, leftRow) in lhs.enumerated() {
            let rightRow = rhs[index]
            if (leftRow != rightRow) {
                XCTFail()
            }
        }
    }

    /**
     8: Zero Matrix

     Write an algorithm such that if an element in a n MxN matrix is 0, its entire row and column are set to 0.
     */
    func _test_08_ZeroMatrix() {
        let matrix = [
            [1, 2, 3, 4],
            [5, 6, 0, 8],
            [9, 10, 11, 12],
        ]
        let expected = [
            [1, 2, 0, 4],
            [0, 0, 0, 0],
            [9, 10, 0, 12],
        ]
        assertMatrixEqual(zero(matrix: matrix), expected)
    }

    /**
     9: String Rotation

     Assume you have a method `isSubstring` which checks if one word is a substring of another. Given two strings, `s1` and `s2`, write code to tcheck if `s2` is a rotation of s1 using only one call to `isSubstring`.
     */
    func _test_09_StringRotation() {
        XCTAssert(isRotation("test", "test"))
        XCTAssert(isRotation("waterbottle", "erbottlewat"))
        XCTAssert(isRotation("helloworld", "worldhello"))
        XCTAssert(isRotation("hello", "heyo"))

    }
}

