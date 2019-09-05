void leaf() {
  __asm__("pmovmskb %xmm1, %rbx");
  }

void main() {
  leaf();
}