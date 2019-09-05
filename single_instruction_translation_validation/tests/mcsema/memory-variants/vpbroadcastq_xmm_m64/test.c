void leaf() {
  __asm__("vpbroadcastq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}