void leaf() {
  __asm__("vpsllvd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}