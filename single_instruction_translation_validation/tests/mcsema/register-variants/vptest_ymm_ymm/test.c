void leaf() {
  __asm__("vptest %ymm2, %ymm1");
  }

void main() {
  leaf();
}