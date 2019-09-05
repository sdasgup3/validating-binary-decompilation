void leaf() {
  __asm__("psignb %xmm2, %xmm1");
  }

void main() {
  leaf();
}