void leaf() {
  __asm__("vfmadd132pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}