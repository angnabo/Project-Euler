/* 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 * This solution finds the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */
var divide = function() {
  var found = false;
  var num = 2520;
  var remainder = 0;
  while(!found) {
    for(i = 2; i <= 20; i++){
      remainder += num % i;
    }
    if(remainder === 0){
        found = true;
        return num;
      }
    remainder = 0;
    num += 20;
  }
}

divide();
