void leaf() {
  __asm__("cvtsd2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}