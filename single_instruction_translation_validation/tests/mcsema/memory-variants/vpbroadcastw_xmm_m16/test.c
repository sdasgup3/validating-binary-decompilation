void leaf() {
  __asm__("vpbroadcastw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}