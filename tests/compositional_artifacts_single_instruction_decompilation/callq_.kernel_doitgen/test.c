void main() {
  __asm__("callq .kernel_doitgen");
  __asm__(".kernel_doitgen:");
}
