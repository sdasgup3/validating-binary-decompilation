void main() {
  __asm__("callq .accumulate_probabilities");
  __asm__(".accumulate_probabilities:");
}
