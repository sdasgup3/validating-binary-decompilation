void leaf() {
  __asm__("vpsrld %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}