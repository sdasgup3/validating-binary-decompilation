void leaf() {
  __asm__("vfmaddsub213pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}