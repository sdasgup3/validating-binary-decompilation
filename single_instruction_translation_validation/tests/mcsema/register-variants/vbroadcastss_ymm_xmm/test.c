void leaf() {
  __asm__("vbroadcastss %xmm2, %ymm1");
  }

void main() {
  leaf();
}