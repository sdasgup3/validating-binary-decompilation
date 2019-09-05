void leaf() {
  __asm__("vpsadbw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}