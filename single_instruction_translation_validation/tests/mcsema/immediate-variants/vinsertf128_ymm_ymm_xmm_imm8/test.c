void leaf() {
  __asm__("vinsertf128 $0x77, %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}