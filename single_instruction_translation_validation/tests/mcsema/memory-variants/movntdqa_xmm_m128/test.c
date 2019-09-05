void leaf() {
  __asm__("movntdqa -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}