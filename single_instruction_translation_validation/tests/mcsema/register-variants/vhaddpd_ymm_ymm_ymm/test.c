void leaf() {
  __asm__("vhaddpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}