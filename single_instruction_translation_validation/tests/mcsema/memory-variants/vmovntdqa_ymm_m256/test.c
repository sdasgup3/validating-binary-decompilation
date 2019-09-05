void leaf() {
  __asm__("vmovntdqa -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}