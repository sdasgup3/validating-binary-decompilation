void leaf() {
  __asm__("pmulhw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}