void leaf() {
  __asm__("pmulhuw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}