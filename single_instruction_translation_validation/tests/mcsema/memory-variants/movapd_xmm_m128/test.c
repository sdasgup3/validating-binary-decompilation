void leaf() {
  __asm__("movapd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}