void leaf() {
  __asm__("vfmadd213pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}