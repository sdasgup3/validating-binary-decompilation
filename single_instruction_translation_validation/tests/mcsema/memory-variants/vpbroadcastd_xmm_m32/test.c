void leaf() {
  __asm__("vpbroadcastd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}