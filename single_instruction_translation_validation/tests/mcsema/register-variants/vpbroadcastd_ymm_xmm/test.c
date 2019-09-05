void leaf() {
  __asm__("vpbroadcastd %xmm2, %ymm1");
  }

void main() {
  leaf();
}