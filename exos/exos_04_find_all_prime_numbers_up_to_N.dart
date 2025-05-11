/// Exercice 04 - Find all prime numbers up to N
/// Author: Phuvatat | Date: 2025-04-14

// Function to check if a number is prime
bool isPrime(int n) {
  if (n < 2) return false; // Numbers less than 2 are not prime

  // Check divisibility from 2 up to the square root of n
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false; // If divisible, it's not prime
  }
  return true; // If no divisors found, it's prime
}

// Function to return all prime numbers from 1 up to N (inclusive)
List<int> primeNumInN(int N) {
  List<int> primes = [];

  for (int i = 2; i <= N; i++) {
    if (isPrime(i)) {
      primes.add(i); // Add to list if prime
    }
  }
  return primes;
}

void main() {
  print(primeNumInN(41)); // Example: prints [2, 3, 5, 7, ..., 41]
}
