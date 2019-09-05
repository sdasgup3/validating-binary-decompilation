void leaf() {
  __asm__("vcvttsd2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}