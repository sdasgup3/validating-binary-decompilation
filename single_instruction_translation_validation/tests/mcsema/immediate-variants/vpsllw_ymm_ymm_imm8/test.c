void leaf() {
  __asm__("vpsllw $0x77, %ymm2, %ymm1");
  }

void main() {
  leaf();
}