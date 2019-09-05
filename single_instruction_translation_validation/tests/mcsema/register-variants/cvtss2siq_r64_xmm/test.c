void leaf() {
  __asm__("cvtss2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}