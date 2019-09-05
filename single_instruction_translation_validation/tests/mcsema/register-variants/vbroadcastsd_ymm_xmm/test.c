void leaf() {
  __asm__("vbroadcastsd %xmm2, %ymm1");
  }

void main() {
  leaf();
}