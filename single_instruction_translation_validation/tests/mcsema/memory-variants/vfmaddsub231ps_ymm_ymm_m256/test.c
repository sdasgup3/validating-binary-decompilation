void leaf() {
  __asm__("vfmaddsub231ps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}