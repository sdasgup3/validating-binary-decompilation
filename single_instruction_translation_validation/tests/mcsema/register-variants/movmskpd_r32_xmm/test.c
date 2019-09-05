void leaf() {
  __asm__("movmskpd %xmm1, %ebx");
  }

void main() {
  leaf();
}