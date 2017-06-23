/* A palindromic number reads the same both ways. The largest palindrome
 * made from the product of two 2-digit numbers is 9009 = 91 × 99.
 * Find the largest palindrome made from the product of two 3-digit numbers.
 */
var isPalindrome = function(num) {
  var reverseNum = num + "";
  var reverseNum = reverseNum.split("").reverse().join("");
  return ((num + "") === reverseNum);

}

var palindrome = function(){
  var palindrome = 0;
  for(x = 999; x > 100; x--) {
    for(y = 999; y > 100; y--) {
      if((isPalindrome(x*y)) && ((x*y) > palindrome)) {
        console.log("Found palindrome:" + (x*y))
        console.log("Product of: " + x + " and " + y);
        palindrome = x*y;
      }
    }
  }
  return palindrome;
}

palindrome();
