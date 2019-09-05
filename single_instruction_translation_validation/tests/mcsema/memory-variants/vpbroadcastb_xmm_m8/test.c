void leaf() {
  __asm__("vpbroadcastb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}