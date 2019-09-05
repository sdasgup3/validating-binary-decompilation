void leaf() {
  __asm__("vpslld %xmm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}