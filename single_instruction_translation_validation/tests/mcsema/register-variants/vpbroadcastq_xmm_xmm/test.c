void leaf() {
  __asm__("vpbroadcastq %xmm2, %xmm1");
  }

void main() {
  leaf();
}