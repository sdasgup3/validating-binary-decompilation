void leaf() {
  __asm__("vfmadd213ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}