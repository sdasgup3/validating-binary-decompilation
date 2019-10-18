void main() {
  __asm__("callq .kernel_covariance");
  __asm__(".kernel_covariance:");
}
