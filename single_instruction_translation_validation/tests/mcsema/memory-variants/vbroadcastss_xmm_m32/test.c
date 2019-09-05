void leaf() {
  __asm__("vbroadcastss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}