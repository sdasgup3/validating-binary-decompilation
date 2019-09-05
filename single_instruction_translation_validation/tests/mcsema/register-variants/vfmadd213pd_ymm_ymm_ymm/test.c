void leaf() {
  __asm__("vfmadd213pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}