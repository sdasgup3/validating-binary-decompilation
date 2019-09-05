void leaf() {
  __asm__("movntdq %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}