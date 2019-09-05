void leaf() {
  __asm__("vpbroadcastq %xmm2, %ymm1");
  }

void main() {
  leaf();
}