void leaf() {
  __asm__("vpbroadcastb %xmm2, %xmm1");
  }

void main() {
  leaf();
}