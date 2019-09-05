void leaf() {
  __asm__("psadbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}