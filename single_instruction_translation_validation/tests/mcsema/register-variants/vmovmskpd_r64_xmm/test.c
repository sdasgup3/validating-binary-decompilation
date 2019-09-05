void leaf() {
  __asm__("vmovmskpd %xmm1, %rbx");
  }

void main() {
  leaf();
}