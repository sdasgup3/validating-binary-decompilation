void leaf() {
  __asm__("vpacksswb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}