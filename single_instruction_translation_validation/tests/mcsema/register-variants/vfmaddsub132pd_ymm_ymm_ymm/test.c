void leaf() {
  __asm__("vfmaddsub132pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}