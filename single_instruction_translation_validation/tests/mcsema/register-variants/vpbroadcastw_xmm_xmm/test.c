void leaf() {
  __asm__("vpbroadcastw %xmm2, %xmm1");
  }

void main() {
  leaf();
}