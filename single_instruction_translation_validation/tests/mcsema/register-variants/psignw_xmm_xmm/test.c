void leaf() {
  __asm__("psignw %xmm2, %xmm1");
  }

void main() {
  leaf();
}