void leaf() {
  __asm__("movntdq %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}