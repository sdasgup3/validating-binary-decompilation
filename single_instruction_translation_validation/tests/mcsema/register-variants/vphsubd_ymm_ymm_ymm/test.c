void leaf() {
  __asm__("vphsubd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}