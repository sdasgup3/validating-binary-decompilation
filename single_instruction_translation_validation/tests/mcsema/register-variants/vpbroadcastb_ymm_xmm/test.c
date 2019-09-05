void leaf() {
  __asm__("vpbroadcastb %xmm2, %ymm1");
  }

void main() {
  leaf();
}