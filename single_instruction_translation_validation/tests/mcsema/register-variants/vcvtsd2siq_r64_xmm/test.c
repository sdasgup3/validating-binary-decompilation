void leaf() {
  __asm__("vcvtsd2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}