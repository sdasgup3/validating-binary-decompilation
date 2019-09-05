void leaf() {
  __asm__("vpsllvq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}