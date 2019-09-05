void leaf() {
  __asm__("movmskpd %xmm1, %rbx");
  }

void main() {
  leaf();
}