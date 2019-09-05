void leaf() {
  __asm__("vpsllw %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}