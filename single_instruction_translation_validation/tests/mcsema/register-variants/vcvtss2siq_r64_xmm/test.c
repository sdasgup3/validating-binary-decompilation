void leaf() {
  __asm__("vcvtss2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}