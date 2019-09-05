void leaf() {
  __asm__("vfmaddsub213ps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}