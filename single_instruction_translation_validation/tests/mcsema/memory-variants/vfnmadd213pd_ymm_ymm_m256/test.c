void leaf() {
  __asm__("vfnmadd213pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}