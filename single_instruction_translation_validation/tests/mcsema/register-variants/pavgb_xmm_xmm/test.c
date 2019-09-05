void leaf() {
  __asm__("pavgb %xmm2, %xmm1");
  }

void main() {
  leaf();
}