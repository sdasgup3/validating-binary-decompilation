void leaf() {
  __asm__("vbroadcastss %xmm2, %xmm1");
  }

void main() {
  leaf();
}