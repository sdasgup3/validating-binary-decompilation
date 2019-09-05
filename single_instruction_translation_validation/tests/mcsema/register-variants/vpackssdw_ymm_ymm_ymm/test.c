void leaf() {
  __asm__("vpackssdw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}