void leaf() {
  __asm__("vpsrld %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}