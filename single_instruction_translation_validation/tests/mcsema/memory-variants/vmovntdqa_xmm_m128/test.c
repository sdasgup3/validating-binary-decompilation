void leaf() {
  __asm__("vmovntdqa -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}