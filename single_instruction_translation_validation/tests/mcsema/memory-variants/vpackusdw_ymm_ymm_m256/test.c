void leaf() {
  __asm__("vpackusdw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}