void leaf() {
  __asm__("cvttsd2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}