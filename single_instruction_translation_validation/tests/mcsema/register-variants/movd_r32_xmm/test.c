void leaf() {
  __asm__("movd %xmm1, %ebx");
  }

void main() {
  leaf();
}