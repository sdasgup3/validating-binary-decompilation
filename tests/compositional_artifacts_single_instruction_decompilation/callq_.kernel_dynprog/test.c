void main() {
  __asm__("callq .kernel_dynprog");
  __asm__(".kernel_dynprog:");
}
