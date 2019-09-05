void leaf() {
  __asm__("vcvttss2siq %xmm1, %rbx");
  }

void main() {
  leaf();
}