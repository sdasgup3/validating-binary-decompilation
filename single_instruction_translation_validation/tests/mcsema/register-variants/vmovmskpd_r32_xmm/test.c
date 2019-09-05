void leaf() {
  __asm__("vmovmskpd %xmm1, %ebx");
  }

void main() {
  leaf();
}