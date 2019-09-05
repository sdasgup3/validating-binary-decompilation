void leaf() {
  __asm__("vfmaddsub213pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}