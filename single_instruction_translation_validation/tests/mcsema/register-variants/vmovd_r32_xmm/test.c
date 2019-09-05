void leaf() {
  __asm__("vmovd %xmm1, %ebx");
  }

void main() {
  leaf();
}