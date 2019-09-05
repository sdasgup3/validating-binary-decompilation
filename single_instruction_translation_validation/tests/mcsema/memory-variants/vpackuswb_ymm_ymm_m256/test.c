void leaf() {
  __asm__("vpackuswb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}