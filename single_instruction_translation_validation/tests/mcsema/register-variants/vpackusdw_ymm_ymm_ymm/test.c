void leaf() {
  __asm__("vpackusdw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}