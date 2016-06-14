
$(document).ready(function() {

//problem #1
var num = 0;

for (i = 0; i < 1000; i++) {
   if (i % 3 ===0 || i % 5 === 0) {
       num += i;
   };
};

   console.log(num);



//problem #2
var add = 1;
var fib = 2;
var sum = add + fib;
var totalSum = 0;

while (sum <= 4000000) {
	if(sum % 2 === 0){
	totalSum += sum;
	}; 
	add = fib;
	fib = sum;
	return totalSum;
};



//problem #3
var numb = 24;
var biggestPrime = 1;
var multiples = [];

for (i = 2; i < numb; i++){
	if (numb % i === 0) {
		multiples.push(i);
		var isPrime = true;
		for (j = 2; j < i; j++) {
			if (i % j === 0) {
				var isPrime = false;
			}
		}
		if (isPrime === true) {
			biggestPrime = i;
		}
	}
}

console.log(multiples);
console.log(biggestPrime);


});