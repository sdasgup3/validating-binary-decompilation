void leaf() {
  __asm__("vpblendvb %ymm4, %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}