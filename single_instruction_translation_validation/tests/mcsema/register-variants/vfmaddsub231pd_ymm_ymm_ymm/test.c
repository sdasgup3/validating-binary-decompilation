void leaf() {
  __asm__("vfmaddsub231pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}