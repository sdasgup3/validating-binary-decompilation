void leaf() {
  __asm__("pshufb %xmm2, %xmm1");
  }

void main() {
  leaf();
}