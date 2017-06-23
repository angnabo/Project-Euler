/*The prime factors of 13195 are 5, 7, 13 and 29.
 *This algorithm finds the largest prime factor of the number 600851475143.
 */

//Get factors of the number
var getFactors = function(num){
  var integer = Math.floor(Math.sqrt(num));
  var factors = [];
  quotient = 0;
  for(var i = 1; i <= integer; i++){
    quotient = num/i;
    if(quotient === Math.floor(quotient)){
      factors.push(i);
      factors.push(num/i);
    }
  }
  //Sorts the array
  function compareNumbers(a, b){
    return b - a;
  }
  factors.sort(compareNumbers);
  return factors;
}
//Get the prime factors
var getPrime = function(integerArray) {
  var primeNumber = 0;
  for (i = 1; i <= integerArray.length-1; i++){
    var factorsAr = [];
    factorsAr = getFactors(integerArray[i]);
    if (factorsAr.length === 2){
      primeNumber = factorsAr[0];
      break;
    }
  }
  return primeNumber;
}
//Get the prime factor
var getPrimeFactor = function(){
  console.log(getPrime(getFactors(600851475143)));
}

getPrimeFactor();
