void leaf() {
  __asm__("vmovd %ebx, %xmm1");
  }

void main() {
  leaf();
}