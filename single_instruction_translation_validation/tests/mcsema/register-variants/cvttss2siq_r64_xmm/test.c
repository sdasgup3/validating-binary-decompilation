void leaf() {
  __asm__("cvttss2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}