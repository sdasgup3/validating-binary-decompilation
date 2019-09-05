void leaf() {
  __asm__("movd %ebx, %xmm1");
  }

void main() {
  leaf();
}