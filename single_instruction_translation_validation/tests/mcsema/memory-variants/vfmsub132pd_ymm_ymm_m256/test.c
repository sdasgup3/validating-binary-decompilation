void leaf() {
  __asm__("vfmsub132pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}