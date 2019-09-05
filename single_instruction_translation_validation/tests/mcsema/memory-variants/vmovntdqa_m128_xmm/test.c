void leaf() {
  __asm__("vmovntdqa %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}