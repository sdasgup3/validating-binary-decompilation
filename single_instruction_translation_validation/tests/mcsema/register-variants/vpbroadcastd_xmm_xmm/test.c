void leaf() {
  __asm__("vpbroadcastd %xmm2, %xmm1");
  }

void main() {
  leaf();
}