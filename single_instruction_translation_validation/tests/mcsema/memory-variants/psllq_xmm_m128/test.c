void leaf() {
  __asm__("psllq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}