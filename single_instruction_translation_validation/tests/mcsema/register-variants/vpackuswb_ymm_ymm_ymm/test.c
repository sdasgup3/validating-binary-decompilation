void leaf() {
  __asm__("vpackuswb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}