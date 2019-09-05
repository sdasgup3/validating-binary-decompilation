void leaf() {
  __asm__("vpbroadcastw %xmm2, %ymm1");
  }

void main() {
  leaf();
}