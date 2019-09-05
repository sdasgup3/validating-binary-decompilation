void leaf() {
  __asm__("comiss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}